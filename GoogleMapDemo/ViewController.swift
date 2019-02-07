//
//  ViewController.swift
//  GoogleMapDemo
//
//  Created by Raihan on 7/2/19.
//  Copyright © 2019 shihab. All rights reserved.
//

import UIKit
import GoogleMaps
class ViewController: UIViewController {

//    AIzaSyCXgEDgiNxGqEumJsZD1HdFpmLsMsP90hs
    
    let latlong = 23.8103
    let longitude = 90.4125
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let camera =  GMSCameraPosition.camera(withLatitude: latlong, longitude: longitude, zoom: 15)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera:  camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: latlong, longitude: longitude)
        marker.title = "Dhaka"
        marker.snippet = "Bangladesh"
        marker.map = mapView

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

