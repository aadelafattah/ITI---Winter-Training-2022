//
//  ViewController.swift
//  NavigationController
//
//  Created by AbdelRahman AbdelFattah on 15/02/2022.
//

import UIKit

class ViewController: UIViewController, ClearTextProtocol {
	
	
	var nameView:NameViewController?
	@IBOutlet weak var textField: UITextField!
	override func viewDidLoad() {
		super.viewDidLoad()
		nameView = self.storyboard?.instantiateViewController(identifier: "nameView") as? NameViewController
	}


	@IBAction func nextButton(_ sender: Any) {
		nameView?.str = textField.text
		nameView?.clearTextDelegate = self
		self.navigationController?.pushViewController(nameView!, animated: true)
	}
	func clearText() {
		textField.text = ""
	}
}

