//
//  ContactUsVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/5/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class ContactUsVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ContactUsToHome", sender: btnHome)
    }
    
    @IBAction func btnBackPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ContactUsToMembership", sender: btnBack)
    }
    
    @IBAction func btnLoginPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ContactUsToLogin", sender: btnLogin)
    }
}
