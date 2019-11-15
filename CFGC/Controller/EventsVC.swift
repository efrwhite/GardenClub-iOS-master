//
//  EventsVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/4/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class EventsVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnBIC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "EventsToHome", sender: btnHome)
    }
    
    @IBAction func btnBICPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "EventsToBIC", sender: btnBIC)
    }
}
