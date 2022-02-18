//
//  ViewController.swift
//  LoginWithNSUserDefaults
//
//  Created by AbdelRahman AbdelFattah on 17/02/2022.
//

import UIKit

class ViewController: UIViewController {
	let defaults = UserDefaults.standard
	@IBOutlet weak var number: UITextField!
	@IBOutlet weak var password: UITextField!
	@IBOutlet weak var button: UIButton!
	override func viewDidLoad() {
		super.viewDidLoad()
		
		if let registered:Bool = defaults.value(forKey: "registered") as? Bool{
			if registered {
				button.setTitle("Login", for: .normal)
			}
		}
	}

	@IBAction func loginAndRegister(_ sender: Any) {
		if button.currentTitle == "Login"{
			if number.text == (defaults.value(forKey: "number") as? String) && (password.text == defaults.value(forKey: "password") as? String){
				let alert = UIAlertController(title: "Correct", message: "Login Successfull", preferredStyle: .alert)
				let ok = UIAlertAction(title: "Ok", style: .default)
				alert.addAction(ok)
				self.present(alert,animated: true, completion: nil)
			}
			else{
				let alert = UIAlertController(title: "Wrong", message: "Wrong password or number", preferredStyle: .alert)
				let ok = UIAlertAction(title: "Ok", style: .default)
				alert.addAction(ok)
				self.present(alert,animated: true, completion: nil)
			}
		}else{
			defaults.set(number.text, forKey: "number")
			defaults.set(password.text, forKey: "password")
			defaults.set(true, forKey: "registered")
			let alert = UIAlertController(title: "Registered", message: "Registeration Successful Successfull", preferredStyle: .alert)
			let ok = UIAlertAction(title: "Ok", style: .default)
			alert.addAction(ok)
			number.text = ""
			password.text = ""
			button.setTitle("Login", for: .normal)
			self.present(alert,animated: true, completion: nil)
		}
	}
	
}

