//
//  MembershipVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/4/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class MembershipVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnContactUs: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MembershipToHome", sender: btnHome)
    }
    
    @IBAction func btnContactUsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MembershipToContactUs", sender: btnContactUs)
    }
    
    @IBAction func btnLoginPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MembershipToLogin", sender: btnLogin)
    }
}
