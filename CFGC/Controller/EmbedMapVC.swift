//
//  EmbedMapVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/5/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit
import GoogleMaps

class EmbedMapVC: UIViewController {
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 34.191113, longitude: -77.838259, zoom: 16.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        let markerRC = GMSMarker()
        markerRC.position = CLLocationCoordinate2D(latitude: 34.191113, longitude: -77.838259)
        markerRC.title = "RC"
        markerRC.map = mapView
        
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 34.191070, longitude: -77.835086)
        marker1.title = "1"
        marker1.map = mapView
        
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 34.191914, longitude: -77.837565)
        marker2.title = "2"
        marker2.map = mapView
        
        let marker3 = GMSMarker()
        marker3.position = CLLocationCoordinate2D(latitude: 34.214952, longitude: -77.828157)
        marker3.title = "3"
        marker3.map = mapView
        
        let marker4 = GMSMarker()
        marker4.position = CLLocationCoordinate2D(latitude: 34.239208, longitude: -77.943111)
        marker4.title = "4"
        marker4.map = mapView
        
        let marker5 = GMSMarker()
        marker5.position = CLLocationCoordinate2D(latitude: 34.239137, longitude: -77.926989)
        marker5.title = "5"
        marker5.map = mapView
        
        let marker6 = GMSMarker()
        marker6.position = CLLocationCoordinate2D(latitude: 34.239108, longitude: -77.927202)
        marker6.title = "6"
        marker6.map = mapView
        
        let marker7 = GMSMarker()
        marker7.position = CLLocationCoordinate2D(latitude: 34.238595, longitude: -77.926464)
        marker7.title = "7"
        marker7.map = mapView
        
        let marker8 = GMSMarker()
        marker8.position = CLLocationCoordinate2D(latitude: 34.228586, longitude: -77.912327)
        marker8.title = "8"
        marker8.map = mapView
        
        let marker9 = GMSMarker()
        marker9.position = CLLocationCoordinate2D(latitude: 34.234054, longitude: -77.912885)
        marker9.title = "9"
        marker9.map = mapView
        
        let marker10 = GMSMarker()
        marker10.position = CLLocationCoordinate2D(latitude: 34.151580, longitude: -77.902439)
        marker10.title = "10"
        marker10.map = mapView
        
        let marker11 = GMSMarker()
        marker11.position = CLLocationCoordinate2D(latitude: 34.233283, longitude: -77.852662)
        marker11.title = "11"
        marker11.map = mapView
        
        let marker12 = GMSMarker()
        marker12.position = CLLocationCoordinate2D(latitude: 34.215712, longitude: -77.807243)
        marker12.title = "12"
        marker12.map = mapView
    }
}
