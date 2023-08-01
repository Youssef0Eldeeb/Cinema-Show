//
//  CinemaLocation.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 30/07/2023.
//

import Foundation
import MapKit

struct CinemaLocation: Codable, Identifiable{
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D{
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
