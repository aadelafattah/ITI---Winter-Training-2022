//
//  ViewController.swift
//  MapLocation
//
//  Created by AbdelRahman AbdelFattah on 18/02/2022.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController{
	var secondView:SecondViewController?
	let defaults = UserDefaults.standard
	@IBOutlet weak var mapView: MKMapView!
	override func viewDidLoad() {
		super.viewDidLoad()
		secondView = self.storyboard?.instantiateViewController(withIdentifier: "secondMap") as? SecondViewController
		mapView.isZoomEnabled = false
		mapView.isRotateEnabled = false
	}
	@IBAction func mapTouched(_ sender: UITapGestureRecognizer) {
		let touchedPoint = sender.location(in: mapView)
		let touchedLocation = mapView.convert(touchedPoint, toCoordinateFrom: mapView)
		print(touchedLocation.longitude)
		defaults.set(touchedLocation.latitude, forKey: "lati")
		defaults.set(touchedLocation.longitude, forKey: "longi")
		self.navigationController?.pushViewController(secondView!, animated: true)
	}
}

