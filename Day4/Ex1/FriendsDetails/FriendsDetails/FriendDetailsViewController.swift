//
//  FriendDetailsViewController.swift
//  FriendsDetails
//
//  Created by AbdelRahman AbdelFattah on 15/02/2022.
//

import UIKit

class FriendDetailsViewController: UIViewController {
	var friend: Friend?
	@IBOutlet weak var image: UIImageView!
	@IBOutlet weak var name: UILabel!
	@IBOutlet weak var phone: UILabel!
	@IBOutlet weak var age: UILabel!
	@IBOutlet weak var email: UILabel!
	@IBOutlet weak var address: UILabel!
	override func viewDidLoad() {
    }
	override func viewWillAppear(_ animated: Bool) {
		image.image = UIImage(named: "icon")
		name.text 	= friend?.name
		phone.text 	= friend?.phone
		age.text 	= friend?.age
		email.text 	= friend?.email
		address.text = friend?.address
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
