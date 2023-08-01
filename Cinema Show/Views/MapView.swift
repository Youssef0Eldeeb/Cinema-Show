//
//  MapView.swift
//  Cinema Show
//
//  Created by Youssef Eldeeb on 28/07/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    static var coordinates = CLLocationCoordinate2D(latitude: 24.4539, longitude: 54.3773)
    static var zoomLevel = MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
    @State var region: MKCoordinateRegion = MKCoordinateRegion(center: coordinates, span: zoomLevel)
    var cinemaLocations: [CinemaLocation] = decode(file: "locations.json")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: cinemaLocations) { item in
            MapAnnotation(coordinate: item.location) {
                CinemaAnnotaion(location: item)
            }

        }
        .ignoresSafeArea()
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
