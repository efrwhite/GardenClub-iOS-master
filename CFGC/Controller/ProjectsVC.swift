//
//  ProjectsVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/5/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class ProjectsVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnGrants: UIButton!
    @IBOutlet weak var btnLegacy: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ProjectsToHome", sender: btnHome)
    }
    
    @IBAction func btnBackPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ProjectsToImpact", sender: btnBack)
    }
    
    @IBAction func btnGrantsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ProjectsToGrants", sender: btnGrants)
    }
    
    @IBAction func btnLegacyPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ProjectsToLegacy", sender: btnLegacy)
    }
}
