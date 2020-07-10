//
//  MapView.swift
//  findmypizza
//
//  Created by Leart Mekolli on 7/10/20.
//  Copyright © 2020 LL. All rights reserved.
//


import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
        
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        //update ui view
        
        uiView.mapType = MKMapType.standard
        
        let coordinate = CLLocationCoordinate2D(latitude: 42.371762, longitude: 21.147788)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
            
        uiView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        
        annotation.title = "Proper Pizza Ferizaj"
        annotation.subtitle = "Currently Opened!"
        uiView.addAnnotation(annotation)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
