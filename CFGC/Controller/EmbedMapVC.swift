//
//  EmbedMapVC.swift
//  CFGC
//
//  Created by Codie Nichols on 10/5/19.
//  Copyright © 2019 Tabor Scott. All rights reserved.
//

import UIKit
import GoogleMaps

class EmbedMapVC: UIViewController, GMSMapViewDelegate {
    var mapView: GMSMapView!
    var markerRC: GMSMarker!
    var marker1: GMSMarker!
    var marker2: GMSMarker!
    var marker3: GMSMarker!
    var marker4: GMSMarker!
    var marker5: GMSMarker!
    var marker6: GMSMarker!
    var marker7: GMSMarker!
    var marker8: GMSMarker!
    var marker9: GMSMarker!
    var marker10: GMSMarker!
    var marker11: GMSMarker!
    var marker12: GMSMarker!
    
    override func viewDidAppear(_ animated: Bool) {
        let camera = GMSCameraPosition.camera(withLatitude: 34.191113, longitude: -77.838259, zoom: 16.0)
        mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.delegate = self
        self.view = mapView
        
        markerRC = GMSMarker()
        markerRC.position = CLLocationCoordinate2D(latitude: 34.191113, longitude: -77.838259)
        markerRC.title = "RC"
        markerRC.icon = self.drawText(text: "RC", inImage: #imageLiteral(resourceName: "icon.png"))
        markerRC.map = mapView
        
        marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 34.191070, longitude: -77.835086)
        marker1.title = "1"
        marker1.icon = self.drawText(text: "1", inImage: #imageLiteral(resourceName: "icon.png"))
        marker1.map = mapView
        
        marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 34.191914, longitude: -77.837565)
        marker2.title = "2"
        marker2.icon = self.drawText(text: "2", inImage: #imageLiteral(resourceName: "icon.png"))
        marker2.map = mapView
        
        marker3 = GMSMarker()
        marker3.position = CLLocationCoordinate2D(latitude: 34.214952, longitude: -77.828157)
        marker3.title = "3"
        marker3.icon = self.drawText(text: "3", inImage: #imageLiteral(resourceName: "icon.png"))
        marker3.map = mapView
        
        marker4 = GMSMarker()
        marker4.position = CLLocationCoordinate2D(latitude: 34.239208, longitude: -77.943111)
        marker4.title = "4"
        marker4.icon = self.drawText(text: "4", inImage: #imageLiteral(resourceName: "icon.png"))
        marker4.map = mapView
        
        marker5 = GMSMarker()
        marker5.position = CLLocationCoordinate2D(latitude: 34.239137, longitude: -77.926989)
        marker5.title = "5"
        marker5.icon = self.drawText(text: "5", inImage: #imageLiteral(resourceName: "icon.png"))
        marker5.map = mapView
        
        marker6 = GMSMarker()
        marker6.position = CLLocationCoordinate2D(latitude: 34.239108, longitude: -77.927202)
        marker6.title = "6"
        marker6.icon = self.drawText(text: "6", inImage: #imageLiteral(resourceName: "icon.png"))
        marker6.map = mapView
        
        marker7 = GMSMarker()
        marker7.position = CLLocationCoordinate2D(latitude: 34.238595, longitude: -77.926464)
        marker7.title = "7"
        marker7.icon = self.drawText(text: "7", inImage: #imageLiteral(resourceName: "icon.png"))
        marker7.map = mapView
        
        marker8 = GMSMarker()
        marker8.position = CLLocationCoordinate2D(latitude: 34.228586, longitude: -77.912327)
        marker8.title = "8"
        marker8.icon = self.drawText(text: "8", inImage: #imageLiteral(resourceName: "icon.png"))
        marker8.map = mapView
        
        marker9 = GMSMarker()
        marker9.position = CLLocationCoordinate2D(latitude: 34.234054, longitude: -77.912885)
        marker9.title = "9"
        marker9.icon = self.drawText(text: "9", inImage: #imageLiteral(resourceName: "icon.png"))
        marker9.map = mapView
        
        marker10 = GMSMarker()
        marker10.position = CLLocationCoordinate2D(latitude: 34.151580, longitude: -77.902439)
        marker10.title = "10"
        marker10.icon = self.drawText(text: "10", inImage: #imageLiteral(resourceName: "icon.png"))
        marker10.map = mapView
        
        marker11 = GMSMarker()
        marker11.position = CLLocationCoordinate2D(latitude: 34.233283, longitude: -77.852662)
        marker11.title = "11"
        marker11.icon = self.drawText(text: "11", inImage: #imageLiteral(resourceName: "icon.png"))
        marker11.map = mapView
        
        marker12 = GMSMarker()
        marker12.position = CLLocationCoordinate2D(latitude: 34.215712, longitude: -77.807243)
        marker12.title = "12"
        marker12.icon = self.drawText(text: "12", inImage: #imageLiteral(resourceName: "icon.png"))
        marker12.map = mapView
    }
    
    public func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        performSegue(withIdentifier: "directions", sender: marker)
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "directions" {
            if let marker = sender as? GMSMarker {
                let title = marker.title
                let destVC = segue.destination as! DirectionsVC
                destVC.marker = title
            }
        }
    }
    
    func drawText(text:NSString, inImage:UIImage) -> UIImage? {

            let font = UIFont.systemFont(ofSize: 14)
            let size = inImage.size

            //UIGraphicsBeginImageContext(size)
            let scale = UIScreen.main.scale
            UIGraphicsBeginImageContextWithOptions(inImage.size, false, scale)
            inImage.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
            let style : NSMutableParagraphStyle = NSMutableParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
            style.alignment = .center
            let attributes:NSDictionary = [ NSAttributedString.Key.font : font, NSAttributedString.Key.paragraphStyle : style, NSAttributedString.Key.foregroundColor : UIColor.black ]

            let textSize = text.size(withAttributes: attributes as? [NSAttributedString.Key : Any])
            let rect = CGRect(x: 0, y: 0, width: inImage.size.width, height: inImage.size.height)
            let textRect = CGRect(x: (rect.size.width - textSize.width)/2, y: (rect.size.height - textSize.height)/2 - 2, width: textSize.width, height: textSize.height)
            text.draw(in: textRect.integral, withAttributes: attributes as? [NSAttributedString.Key : Any])
            let resultImage = UIGraphicsGetImageFromCurrentImageContext()

            UIGraphicsEndImageContext()

            return resultImage
    }
}
