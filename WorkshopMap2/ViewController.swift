//
//  ViewController.swift
//  WorkshopMap2
//
//  Created by Joel Trew on 20/02/2015.
//  Copyright (c) 2015 Joel Trew. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {


    @IBOutlet var mapView: MKMapView! {
        
        didSet {
            mapView.showsPointsOfInterest = false
            mapView.delegate = self
        }
    }
    
    var coffeeShops = [
        CoffeeShop(name: "Bay Tree", comment: "Independent Coffee", coordinate: CLLocationCoordinate2D(latitude: 50.742339, longitude: -1.880567), imagePath: "Scroast.jpg"),
        CoffeeShop(name: "Coffee Club Restaurant", comment: "A coffee club", coordinate: CLLocationCoordinate2D(latitude: 50.722999, longitude:  -1.901338), imagePath: "logo.png"),
        CoffeeShop(name: "Coffe L'Amour", comment: "French Coffee!!", coordinate: CLLocationCoordinate2D(latitude: 50.720988, longitude:  -1.876190), imagePath: "lmour.jpg"),
        
        ]
    
    
    
    override func viewDidAppear(animated: Bool) {
        let bnmthCoords = CLLocationCoordinate2D(latitude: 50.742894, longitude: -1.896827)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: bnmthCoords, span: span)
        mapView.setRegion(region, animated: false)
        
        mapView.addAnnotations(coffeeShops)
        
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        let coffeeShop = annotation as CoffeeShop
        let customPinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "CoffeeShopAnnotation")
        customPinView.pinColor = .Red
        customPinView.animatesDrop = true
        customPinView.canShowCallout = true
        let image = UIImageView(image: UIImage(named: coffeeShop.imagePath))
        image.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        customPinView.leftCalloutAccessoryView = image
        return customPinView
    }

}

