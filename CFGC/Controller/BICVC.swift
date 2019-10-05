//
//  BICVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/5/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class BICVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "BICToHome", sender: btnHome)
    }
    
    @IBAction func btnBackPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "BICToEvents", sender: btnBack)
    }
}
