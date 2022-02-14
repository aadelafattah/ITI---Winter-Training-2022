//
//  ViewController.swift
//  CopyingText
//
//  Created by AbdelRahman AbdelFattah on 14/02/2022.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var Label: UILabel!
	@IBOutlet weak var TextField: UITextField!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


	@IBAction func copyText(_ sender: Any) {
		Label.text = TextField.text
		TextField.text = ""
	}
}

