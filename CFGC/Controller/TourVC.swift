//
//  TourVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/4/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class TourVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnMap: UIButton!
    @IBOutlet weak var btnBelles: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "TourToHome", sender: btnHome)
    }
    
    @IBAction func btnMapPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "TourToMap", sender: btnMap)
    }
    
    @IBAction func btnBellesPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "TourToBelles", sender: btnBelles)
    }
}
