//
//  ViewController.swift
//  googlemap_test
//
//  Created by Quân Nguyễn on 27/01/2024.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GMSServices.provideAPIKey("AIzaSyD07_zunAuE0zXWZ81p0HZMOmpdBCT6nsE")
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: view.frame, camera: camera)
        self.view.addSubview(mapView)
        let maker = GMSMarker()
        maker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        maker.title = "Sydney"
        maker.snippet = "Australia"
        maker.map = mapView
    }


}

