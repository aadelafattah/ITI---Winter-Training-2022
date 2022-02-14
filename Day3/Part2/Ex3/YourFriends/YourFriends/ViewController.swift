//
//  ViewController.swift
//  YourFriends
//
//  Created by AbdelRahman AbdelFattah on 14/02/2022.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var friendsDisplay: UILabel!
	var i = 0;
	let names = ["Harry","Ross",
				 "Bruce","Cook",
				 "Carolyn","Morgan"]
	override func viewDidLoad() {
		super.viewDidLoad()
		friendsDisplay.text = names[i]
	}

	@IBAction func nextClick(_ sender: Any) {
		if(i==names.count-1){
			i = 0
		}else{
			i+=1
		}
		friendsDisplay.text = names[i]
	}
	@IBAction func previousClick(_ sender: Any) {
		if(i==0){
			i = names.count-1
		}else{
			i-=1
		}
		friendsDisplay.text = names[i]
	}
	
}

