//
//  GrantsVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/5/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class GrantsVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnProjects: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnLegacy: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "GrantsToHome", sender: btnHome)
    }
    
    @IBAction func btnProjectsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "GrantsToProjects", sender: btnProjects)
    }
    
    @IBAction func btnBackPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "GrantsToImpact", sender: btnBack)
    }
    
    @IBAction func btnLegacyPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "GrantsToLegacy", sender: btnLegacy)
    }
}
