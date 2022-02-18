//
//  FirstViewController.swift
//  TabbedAndNavigation
//
//  Created by AbdelRahman AbdelFattah on 17/02/2022.
//

import UIKit

class FirstViewController: UIViewController {
	var ThirdView:ThirdViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
		ThirdView = self.storyboard?.instantiateViewController(withIdentifier: "ThirdView") as? ThirdViewController
        // Do any additional setup after loading the view.
    }
    

	@IBAction func nextButton(_ sender: Any) {
		self.navigationController?.pushViewController(ThirdView!, animated: true)
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
