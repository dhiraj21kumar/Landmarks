//
//  Landmark.swift
//  Landmarks
//
//  Created by Dhiraj Kumar on 11/05/20.
//  Copyright © 2020 Dhiraj Kumar. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    
    var locationCoordinate : CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
        
    }
    
    enum Category: String, CaseIterable, Hashable {
        case featured = "Featured"
        case lake = "Lake"
        case rivers = "Rivers"
    }
}

extension Landmark {
    var image : Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
