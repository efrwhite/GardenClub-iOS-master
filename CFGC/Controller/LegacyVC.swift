//
//  LegacyVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/5/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class LegacyVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnProjects: UIButton!
    @IBOutlet weak var btnGrants: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "LegacyToHome", sender: btnHome)
    }
    
    @IBAction func btnProjectsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "LegacyToProjects", sender: btnProjects)
    }
    
    @IBAction func btnGrantsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "LegacyToGrants", sender: btnGrants)
    }
    
    @IBAction func btnBackPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "LegacyToImpact", sender: btnBack)
    }
}
