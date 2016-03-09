//
//  IC_Map.swift
//  Watch_01
//
//  Created by Rubens Gondek on 3/8/16.
//  Copyright © 2016 Gondek. All rights reserved.
//

import WatchKit
import Foundation
import CoreLocation

class IC_Map: WKInterfaceController, CLLocationManagerDelegate {

    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        

        // Configure interface objects here.
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else { return }
        
        let lastLocation = locations.last!.coordinate
        let coord = CLLocationCoordinate2D(latitude: lastLocation.latitude, longitude: lastLocation.longitude)
        
        
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print(__FUNCTION__, error.localizedDescription)
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        print(__FUNCTION__, status)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
