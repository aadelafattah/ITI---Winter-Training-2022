//
//  MyAnnotation.swift
//  MapLocation
//
//  Created by AbdelRahman AbdelFattah on 18/02/2022.
//

import Foundation
import MapKit

class MyAnnotation: NSObject, MKAnnotation{
	var coordinate: CLLocationCoordinate2D
	init(coordinate:CLLocationCoordinate2D){
		self.coordinate = coordinate
	}
}
