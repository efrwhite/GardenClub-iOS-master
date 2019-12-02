//
//  DirectionsVC.swift
//  CFGC
//
//  Created by Elizabeth Baker on 11/15/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit

class DirectionsVC: UIViewController {
    
    var marker: String?
    
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var titleTV: UILabel!
    @IBOutlet weak var descTV: UILabel!
    @IBOutlet weak var btnDirections: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch(marker) {
        case "RC":
            descTV.text = "Tom & Kate Fetzer\n6417 Quail Run Road 28409\n919-280-9184\ntom@fetzerlee.com"
            break
        case "1":
            titleTV.text = "Info About Marker 1"
            descTV.text = "Dr. Jeff Warhaftig & Dr. Amanda Trimpey\n6315 Old Military Road 28409\n910-200-8516 Amanda\ntrimpey@earthlink.net"
            btnDirections.setTitle("Get Directions to Marker 1\n(Open Google Maps)", for: .normal)
            break
        case "2":
            titleTV.text = "Info About Marker 2"
            descTV.text = "James & Frances Parnell\n6451 Quail Run Road 28409\n910-791-1365\nfbparnell1937@gmail.com"
            btnDirections.setTitle("Get Directions to Marker 2\n(Open Google Maps)", for: .normal)
            break
        case "3":
            titleTV.text = "Info About Marker 3"
            descTV.text = "Airlie Gardens (Lebanon Chapel also included with Airlie)\n300 Airlie Road 28403\nRebecca Pearce\n910-256-5083\nrpearce@nhcgov.com\n\nRandy Inge    (Contact for Lebanon Chapel)\n829 S. Mooring Drive\nWilmington, NC  28405\n804-839-8492\nrandybinge@gmail.com"
            btnDirections.setTitle("Get Directions to Marker 3\n(Open Google Maps)", for: .normal)
            break
        case "4":
            titleTV.text = "Info About Marker 4"
            descTV.text = "Garden Duo\nChris Gore & Matthew TenHuisen\n512 Grace Street 28401\n910-262-5391\nc.l.gore@hotmail.com\nJosephine TenHuisen\n510 Grace Street 28401"
            btnDirections.setTitle("Get Directions to Marker 4\n(Open Google Maps)", for: .normal)
            break
        case "5":
            titleTV.text = "Info About Marker 5"
            descTV.text = "Scotty & Kenton Sanders\n1710 Chestnut Street 28405\n828-493-0320\nMurphythehorse@gmail.com"
            btnDirections.setTitle("Get Directions to Marker 5\n(Open Google Maps)", for: .normal)
            break
        case "6":
            titleTV.text = "Info About Marker 6"
            descTV.text = "Karen & Auley Crouch\n1708 Chestnut Street 28405\n910-762-2383\nkaren@karenpadencrouch.com"
            btnDirections.setTitle("Get Directions to Marker 6\n(Open Google Maps)", for: .normal)
            break
        case "7":
            titleTV.text = "Info About Marker 7"
            descTV.text = "Donna Launey & Patrick Tester\n1711 Princess Street 28405\n503-730-4401\nDonnalauney@icloud.com"
            btnDirections.setTitle("Get Directions to Marker 7\n(Open Google Maps)", for: .normal)
            break
        case "8":
            titleTV.text = "Info About Marker 8"
            descTV.text = "Dan Thorpe & Anne Beck\n707 Colonial Drive 28403\n717-752-6496 Dan\n910-632-0221 Anne\nmanagerthorpelandscapes@gmail.com"
            btnDirections.setTitle("Get Directions to Marker 8\n(Open Google Maps)", for: .normal)
            break
        case "9":
            titleTV.text = "Info About Marker 9"
            descTV.text = "Erin & Dustin Sullivan\n314 Colonial Drive 28403\n910-547-1937 Erin\nErin@revisonsofwilmington.com"
            btnDirections.setTitle("Get Directions to Marker 9\n(Open Google Maps)", for: .normal)
            break
        case "10":
            titleTV.text = "Info About Marker 10"
            descTV.text = "Susan Wilson\n5024 Split Rail Drive 28412 (Johnson Farms)\n910-352-0340\nswilson@ec.rr.com"
            btnDirections.setTitle("Get Directions to Marker 10\n(Open Google Maps)", for: .normal)
            break
        case "11":
            titleTV.text = "Info About Marker 11"
            descTV.text = "Marcia Doering\n6309 Pintail Court 28403 (College Acres)\n910-616-3637\nmarcia_doering@yahoo.com"
            btnDirections.setTitle("Get Directions to Marker 11\n(Open Google Maps)", for: .normal)
            break
        case "12":
            titleTV.text = "Info About Marker 12"
            descTV.text = "Harbor Way Gardens\nNext to Town Hall Wrightsville Beach\nSeawater Lane, Wrightsville Beach 28480\nElise Running\n910-612-5872\nesrunning@yahoo.com"
            btnDirections.setTitle("Get Directions to Marker 12\n(Open Google Maps)", for: .normal)
            break
        default:
            break
        }
    }
    
    @IBAction func btnHomePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "DirectionsToHome", sender: btnHome)
    }
    
    @IBAction func btnDirectionsPressed(_ sender: UIButton) {
        switch(marker) {
        case "RC":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=6417+Quail+Run+Road+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=6417+Quail+Run+Road+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "1":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=6315+Old+Military+Road+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=6315+Old+Military+Road+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "2":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=6451+Quail+Run+Road+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=6451+Quail+Run+Road+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "3":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=300+Airlie+Road+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=300+Airlie+Road+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "4":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=510+Grace+Street+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=510+Grace+Street+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "5":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=1710+Chestnut+Street+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=1710+Chestnut+Street+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "6":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=1708+Chestnut+Street+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=1708+Chestnut+Street+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "7":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=1711+Princess+Street+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=1711+Princess+Street+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "8":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=707+Colonial+Drive+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=707+Colonial+Drive+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "9":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=314+Colonial+Drive+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=314+Colonial+Drive+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "10":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=5024+Split+Rail+Road+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=5024+Split+Rail+Road+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "11":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=6309+Pin+Tail+Court+Wilmington,+North+Carolina&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=6309+Pin+Tail+Court+Wilmington,+North+Carolina&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        case "12":
            if(UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
                let URLString = "comgooglemaps://?daddr=34.215712,-77.807243&directionsmode=driving"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            } else {
                let URLString = "http://maps.apple.com/?daddr=34.215712,-77.807243&dirflg=d"
                guard let url = URL(string: URLString) else { return }
                if #available(iOS 10, *) { UIApplication.shared.open(url) }
                else { UIApplication.shared.openURL(url) }
            }
            break
        default:
            break
        }
    }
    
    @IBAction func btnBackPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "DirectionsToMap", sender: btnBack)
    }
}
