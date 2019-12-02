//
//  WebVC.swift
//  CFGC
//
//  Created by Cory on 4/23/18.
//  Copyright © 2018 Tabor Scott. All rights reserved.
//

import UIKit
import CoreData

class WebVC: UIViewController, UIWebViewDelegate {
    
    var currentUser: User!
    var currentURL: String!
    var contactCards: [ContactCard]!
    var attempts = 0
    var numberOfFiles: Int!
    
    @IBOutlet weak var statusTextField: UITextField!
    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.delegate = self
        URLCache.shared.removeAllCachedResponses()
        URLCache.shared.diskCapacity = 0
        URLCache.shared.memoryCapacity = 0
        // Do any additional setup after loading the view, typically from a nib.
        //self.webView.delegate = self
        let url = NSURL (string: "http://www.capefeargardenclub.org/wp-login.php")! as URL;
        let requestObj = NSURLRequest(url: url)
        myWebView?.loadRequest(requestObj as URLRequest)
        // Do any additional setup after loading the view.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print ("checking site")
        currentURL = webView.request?.url?.absoluteString
        print(currentURL)
        if(attempts > 0){
            activityIndicator.stopAnimating()
            activityIndicator.isHidden = true
            verifyLogin(url: currentURL)
        }
        print("attempting to fill form")
        attempts = attempts + 1
        // fill data
        let savedUsername = currentUser.userName
        let savedPassword = currentUser.password
        
        let fillForm = String(format: "document.getElementById('user_login').value = '\(savedUsername)';document.getElementById('user_pass').value = '\(savedPassword)';")
        webView.stringByEvaluatingJavaScript(from: fillForm)
        
        //check checkboxes
        //webView.stringByEvaluatingJavaScript(from: "document.getElementById('expert_remember_me').checked = true; document.getElementById('expert_terms_of_service').checked = true;")
        
        //submit form
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            webView.stringByEvaluatingJavaScript(from: "document.forms[\"loginform\"].submit();")
            //self.currentURL = webView.request?.url?.absoluteString
            //self.verifyLogin(url: self.currentURL)
        }

    }
    
    func verifyLogin(url: String){
        let authentication = Background(url: url)
        
        if authentication.login_wp{
            self.statusTextField.text = "Downloading Assets..."
            
            downloadAssets()
            performSegue(withIdentifier: "ContactVC", sender:currentUser )
        }
        else{
            performSegue(withIdentifier: "LoginViewController", sender: currentUser)
        }
    }
    func downloadAssets(){
        self.numberOfFiles = 0
        var i = 0
        for card in contactCards{
            i = i + 1
            
            if card.PhotoId != ""{
                let objectPath = UserDefaults.standard.object(forKey: card.PhotoId)
                print(i)
                
                if objectPath == nil {
                    numberOfFiles = numberOfFiles + 1
                }
            }
            
        }
        //let domain = Bundle.main.bundleIdentifier REMOVE DATA
        
        //UserDefaults.standard.removePersistentDomain(forName: (domain)!) REMOVE DATA
        let downLoad = Background(cards: contactCards)
        if(numberOfFiles > 1){
            downLoad.saveImagesAsyncController()
        }
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ContactVC"{
            
            if let contVC = segue.destination as? ContactVC{
                if let user = sender as? User {
                    contVC.currentUser = user;
                    contVC.contactCards = self.contactCards
                    contVC.filesToDownload = numberOfFiles
                }
            }
        }
        else if segue.identifier == "LoginViewController"{
            if let logVC = segue.destination as? LoginViewController{
                if let user = sender as? User {
                    logVC.currentUser = user
                    //logVC.userName.text = user.userName
                    //logVC.password.text = user.password
                    logVC.authenticated = false
                    logVC.loginAttempts = 1
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createAlert (title: String!, message: String!){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
