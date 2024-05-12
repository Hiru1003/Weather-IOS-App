//
//  LocationManager.swift
//  WeatherDemo
//
//  Created by Hirumi Perera on 2024-05-12.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
            
        // Assigning a delegate to our CLLocationManager instance
        manager.delegate = self
    }
}
