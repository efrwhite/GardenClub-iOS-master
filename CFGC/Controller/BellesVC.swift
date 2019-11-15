//
//  BellesVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/5/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class BellesVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnMap: UIButton!
    @IBOutlet weak var btnTour: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "BellesToHome", sender: btnHome)
    }
    
    @IBAction func btnMapPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "BellesToMap", sender: btnMap)
    }
    
    @IBAction func btnTourPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "BellesToTour", sender: btnTour)
    }
}
