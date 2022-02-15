//
//  NameViewController.swift
//  NavigationController
//
//  Created by AbdelRahman AbdelFattah on 15/02/2022.
//

import UIKit

class NameViewController: UIViewController {
	var str:String?
	var clearTextDelegate : ClearTextProtocol?
	@IBOutlet weak var heyName: UILabel!
	override func viewDidLoad() {
        super.viewDidLoad()
		let rightButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(done))
		navigationItem.rightBarButtonItem = rightButton

        // Do any additional setup after loading the view.
    }
	override func viewWillAppear(_ animated: Bool) {
		heyName.text = "Hello, \(str!)"
	}
	@objc func done(){
		clearTextDelegate?.clearText()
		navigationController?.popViewController(animated: true)
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
