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
}
