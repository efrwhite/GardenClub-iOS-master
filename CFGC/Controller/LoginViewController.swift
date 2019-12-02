//
//  ViewController.swift
//  CFGC
//
//  Created by Cory on 2/19/18.
//  Copyright © 2018 Tabor Scott. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var outerStackView: UIStackView!
    @IBOutlet weak var loginStackView: UIStackView!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()
    var activeTextField: UITextField!
    var conCardsJson : [ContactCard]!
    private var _backGround : Background!
    var loginAttempts = 0
    var authenticated = false
    var currentUser: User!
    var wasLogged = false
    var previousLogin: User!
    
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var btnHome: UIButton!
    
    func pullContacts(){
        if (!authenticated && loginAttempts > 0){
            userName.text = currentUser.userName
            DispatchQueue.main.asyncAfter(deadline: .now()+2){
                self.createAlert(title: "Authentication Failed", message: "Incorrect Username or Password")
            }
        }
        let backG = Background(login: true)
        _backGround = backG
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pullContacts()
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
        let center: NotificationCenter = NotificationCenter.default;
        center.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        center.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        let scrollViewTap = UITapGestureRecognizer(target: self, action: #selector(scrollViewTapped))
        scrollViewTap.numberOfTapsRequired = 1
        scrollView.addGestureRecognizer(scrollViewTap)
        userName.borderStyle = UITextField.BorderStyle.roundedRect
        password.borderStyle = UITextField.BorderStyle.roundedRect
        submitBtn.layer.cornerRadius = 23
    
    }
    
    @objc func scrollViewTapped() {
        self.view.endEditing(true)
        //print("scrollViewTapped")
    }
    @objc func keyboardWillShow(notification:NSNotification) {
        guard let keyboardFrameValue = notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue else {
            return
        }
        let keyboardFrame = view.convert(keyboardFrameValue.cgRectValue, from: nil)
        scrollView.contentOffset = CGPoint(x:0, y:keyboardFrame.size.height)
    }
    
    @objc func keyboardWillHide(notification:NSNotification) {
        scrollView.contentOffset = .zero
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return outerStackView
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        scrollView.isUserInteractionEnabled = true
    }
    
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "LoginToHome", sender: btnHome)
    }
    
    @IBAction func submitBtnPressed(_ sender: UIButton){
        conCardsJson = _backGround.contactCards
        currentUser = User(userName: "efrwhite@aol.com", password: "CFGC-2019-20@EBaker!")
        //let spinner = UIViewController.displaySpinner(onView: self.view)
        //self.startActivity()
        
        if(wasLogged && currentUser.userName != ""){
            if(previousLogin.userName == currentUser.userName && previousLogin.password == currentUser.password){
                performSegue(withIdentifier: "ContactVC", sender: currentUser)
            }
            else{
                print(previousLogin.userName,"", previousLogin.password)
                performSegue(withIdentifier: "WebVC", sender: currentUser)
            }
        }
        else{
            performSegue(withIdentifier: "WebVC", sender: currentUser)
        }
        
        /*
        if (verifyLogin(userName: currentUser.userName, password: password.text!)){
            //UIViewController.removeSpinner(spinner: spinner)
            //self.stopActivity()
            performSegue(withIdentifier: "ContactVC", sender: currentUser)
        }
        else{
            createAlert(title: "Login Failure", message: "Incorrect Username or Password")
        }
 */
    }
    
    func createAlert (title: String!, message: String!){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ContactVC"{
            
                if let contVC = segue.destination as? ContactVC{
                    if let user = sender as? User {
                        contVC.currentUser = user;
                        contVC.contactCards = conCardsJson
                    }
                }
            
        }
        
        else if segue.identifier == "WebVC"{
            if let webVc = segue.destination as? WebVC{
                if let user = sender as? User{
                    webVc.currentUser = user
                    webVc.contactCards = conCardsJson
                }
            }
        }
    }
    
    /*
     @objc func keyboardDidShow(notification: Notification){
     let info:NSDictionary = notification.userInfo! as NSDictionary
     let keyboardSize = (info[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
     let keyboardY = self.view.frame.size.height - keyboardSize.height
     
     let editingTextFieldY: CGFloat! = self.activeTextField?.frame.origin.y
     
     if (self.view.frame.origin.y >= 0){
     //check if the the text field is behind the keyboard
     if (editingTextFieldY > (keyboardY - 60)) {
     UIView.animate(withDuration: 0.25, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations:{
     self.view.frame = CGRect(x: 0, y: self.view.frame.origin.y - (editingTextFieldY - (keyboardY - 60)), width: self.view.bounds.width, height: self.view.bounds.height)
     }, completion: nil)
     }
     }
     }
     
     @objc func keyboardWillHide(notification: Notification){
     UIView.animate(withDuration: 0.25, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations:{
     self.view.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
     }, completion: nil)
     
     }
     
     override func viewWillDisappear(_ animated: Bool) {
     NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
     NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
     
     }
     
     func textFieldDidBeginEditing(_ textField: UITextField) {
     activeTextField = textField    }
     
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     textField.resignFirstResponder()
     return true
     }
     */
    /*
     func verifyLogin(userName: String, password: String) -> Bool{
     /*
     for x in conCardsJson{
     if x.ContactEmail == userName{
     return true
     }
     }
     */
     
     //let loginBackground = Background(userName: userName, password: password)
     
     //if(loginBackground.login_wp && loginAttempts < 3){
     // return true
     //}
     if loginAttempts < 1{
     createAlert(title: "Failed To Authenticate", message:"For Beta purposes you may log in with password \"testing\"")
     loginAttempts = loginAttempts + 1
     }
     else{
     return betaAuthentication(userName: userName, password: password)
     }
     return false
     }
     
     func betaAuthentication(userName: String, password: String)->Bool{
     for x in conCardsJson{
     if x.ContactEmail == userName && password == "testing"{
     return true
     }
     }
     return false
     }
     */
}


