//
//  HomePageViewController.swift
//  CFGC
//
//  Created by Codie Nichols on 10/4/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class HomePageVC: UIViewController {
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnTour: UIButton!
    @IBOutlet weak var btnEvents: UIButton!
    @IBOutlet weak var btnImpact: UIButton!
    @IBOutlet weak var btnMember: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "HomeToHome", sender: btnHome)
    }
    
    @IBAction func btnTourPressed(sender: UIButton) {
        performSegue(withIdentifier: "HomeToTour", sender: btnTour)
    }
    
    @IBAction func btnEventsPressed(sender: UIButton) {
        performSegue(withIdentifier: "HomeToEvents", sender: btnEvents)
    }
    
    @IBAction func btnImpactPressed(sender: UIButton) {
        performSegue(withIdentifier: "HomeToImpact", sender: btnImpact)
    }
    
    @IBAction func btnMembershipPressed(sender: UIButton) {
        performSegue(withIdentifier: "HomeToMembership", sender: btnMember)
    }
}
