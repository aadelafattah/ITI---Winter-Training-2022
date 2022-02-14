//
//  ViewController.swift
//  HelloWorld
//
//  Created by AbdelRahman AbdelFattah on 14/02/2022.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var HelloWorld: UILabel!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func buttonPressed(_ sender: Any) {
		if(HelloWorld.text!.isEmpty){
			HelloWorld.text = "Hello World"
		}else{
			HelloWorld.text=""
		}
	}
	
}

