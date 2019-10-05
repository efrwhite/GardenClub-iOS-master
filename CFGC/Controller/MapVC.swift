//
//  MapVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/5/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class MapVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnBelles: UIButton!
    @IBOutlet weak var btnTour: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MapToHome", sender: btnHome)
    }
    
    @IBAction func btnBellesPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MapToBelles", sender: btnBelles)
    }
    
    @IBAction func btnTourPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "MapToTour", sender: btnTour)
    }
}
