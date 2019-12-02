//
//  ImpactVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/4/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class ImpactVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnProjects: UIButton!
    @IBOutlet weak var btnGrants: UIButton!
    @IBOutlet weak var btnLegacy: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ImpactToHome", sender: btnHome)
    }
    
    @IBAction func btnProjectsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ImpactToProjects", sender: btnProjects)
    }
    
    @IBAction func btnGrantsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ImpactToGrants", sender: btnGrants)
    }
    
    @IBAction func btnLegacyPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ImpactToLegacy", sender: btnLegacy)
    }
}
