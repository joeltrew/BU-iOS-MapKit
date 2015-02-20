//
//  CoffeeShop.swift
//  WorkshopMap2
//
//  Created by Joel Trew on 20/02/2015.
//  Copyright (c) 2015 Joel Trew. All rights reserved.
//

import Foundation
import MapKit

class CoffeeShop: NSObject, MKAnnotation{
    var name: String
    var comment: String
    var coordinate: CLLocationCoordinate2D
    var imagePath: String
    
    var title: String! { return name }
    var subtitle: String! { return comment }
    
    init(name: String, comment: String, coordinate: CLLocationCoordinate2D, imagePath: String) {
        self.name = name
        self.comment = comment
        self.coordinate = coordinate
        self.imagePath = imagePath
        
        
    }
}
