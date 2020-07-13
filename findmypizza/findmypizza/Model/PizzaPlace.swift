//
//  PizzaPlace.swift
//  findmypizza
//
//  Created by Lorent Mustafa on 7/11/20.
//  Copyright © 2020 LL. All rights reserved.
//

import SwiftUI
import CoreLocation

struct PizzaPlace: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var coordinates:Coordinates
    var city:String
    var address:String
    var phoneNo:String
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}


struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}



