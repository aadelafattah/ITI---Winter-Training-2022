//
//  SecondViewController.swift
//  MapLocation
//
//  Created by AbdelRahman AbdelFattah on 18/02/2022.
//

import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController {

	let defaults = UserDefaults.standard
	@IBOutlet weak var mapView: MKMapView!
	override func viewDidLoad() {
        super.viewDidLoad()
		mapView.isZoomEnabled = false
		mapView.isRotateEnabled = false
    }
	override func viewWillAppear(_ animated: Bool) {
		let coordinate = CLLocationCoordinate2D(latitude: defaults.value(forKey: "lati") as! CLLocationDegrees, longitude: defaults.value(forKey: "longi") as! CLLocationDegrees)
		let annotation = MyAnnotation(coordinate: coordinate)
		mapView.addAnnotation(annotation)
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
