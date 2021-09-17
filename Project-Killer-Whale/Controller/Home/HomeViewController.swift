//
//  HomeViewController.swift
//  Project-Killer-Whale
//
//  Created by Javier Plaza Sisqués on 17/9/21.
//

import UIKit
import MapKit

final class HomeViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var mapView: MKMapView!
    
    private var locationManager: CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coordinate = CLLocationCoordinate2D(latitude: 42.0006, longitude: -5.756)
        let coordinate2 = CLLocationCoordinate2D(latitude: 42.0006, longitude: -6.756)
        mapView.setPointAnnotation(coordinate: coordinate)
        mapView.setPointAnnotation(coordinate: coordinate2)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        configMapGeo()
    }
    
    private func configMapGeo(){
        
        //Create a location manager
        locationManager = CLLocationManager()
        
        //Delegate the functions and create an extension
        locationManager?.delegate = self
        
        //We ask for permisions to use location
        locationManager?.requestWhenInUseAuthorization()
        
        //Configure the accuracy
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        locationManager?.distanceFilter = kCLDistanceFilterNone
        
        //Update the location
        locationManager?.startUpdatingLocation()
        
        //Shoe the user location
        mapView.showsUserLocation = true
        
        //Activate permissions in Info.plist
        //Permision: Privacy - Location when in usage with description
        
    }
    
}


extension HomeViewController: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //We take the first location given as a parameter (The user location)
        if let location = locations.first{
            //Stop the process to update location
            manager.stopUpdatingLocation()
            
            //Render the map
            render(location)
        }
    }
    
    // This function renders the map and put the user in map
    private func render(_ location: CLLocation){
        
        //Create a coordinate with the user location
        let coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        
        //Create a span (Zoom)
        let span = MKCoordinateSpan(latitudeDelta: Constants.Map.latitudeDelta, longitudeDelta: Constants.Map.longitudeDelta)
        
        //Create a region with coordinates and span
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        //Set the region in the map
        mapView.setRegion(region, animated: true)
    }
}
