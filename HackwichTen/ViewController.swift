//
//  ViewController.swift
//  HackwichTen
//
//  Created by kat on 4/15/20.
//  Copyright © 2020 kat. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let initiallocation = CLLocation(latitude: 21.361888, longitude: -158.056022)
    let location = CLLocation(latitude: 21.330976, longitude: -158.085684)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(location: initiallocation)
        // Do any additional setup after loading the view.
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Wendys", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.330976 , longitude: -158.085684))
        mapView.addAnnotation(restaurantTwo)
        
    }
      
    func centerMapOnLocation(location:CLLocation){
        
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(coordinateRegion, animated: true)
        
        
    }

    
    
}

