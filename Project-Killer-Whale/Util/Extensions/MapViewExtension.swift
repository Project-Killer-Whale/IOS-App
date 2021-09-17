//
//  MapViewExtension.swift
//  Project-Killer-Whale
//
//  Created by Javier Plaza Sisqués on 17/9/21.
//

import Foundation
import MapKit

extension MKMapView{
    
    func setPointAnnotation(coordinate: CLLocationCoordinate2D){
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        self.addAnnotation(annotation)
    }
    
}
