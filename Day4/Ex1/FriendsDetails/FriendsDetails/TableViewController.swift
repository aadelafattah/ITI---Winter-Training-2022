//
//  TableViewController.swift
//  FriendsDetails
//
//  Created by AbdelRahman AbdelFattah on 15/02/2022.
//

import UIKit

struct Friend{
	let name:String
	let phone:String
	let age:String
	let email:String
	let address:String
}
class TableViewController: UITableViewController {
	
	var details:FriendDetailsViewController!
	var Friends:[Friend] =
	[Friend(name: "Joe V. Christian", phone: "7043404989", age: "73", email: "JoeVChristian@rhyta.com", address: "254 Red Dog Road"),
	Friend(name: "Marcelino S. Nichol", phone: "2176914361", age: "64", email: "MarcelinoSNichol@jourrapide.com", address: "4057 Scenic Way"),
	 Friend(name: "Jabirah Rida Gerges", phone: "5809386897", age: "64", email: "JabirahRidaGerges@armyspy.com", address: "1290 Dovetail Estates"),
	 Friend(name: "Patrick Beich", phone: "07708912554", age: "40", email: "PatrickBeich@armyspy.com", address: "95 Pier Road"),
	 Friend(name: "Annette N. Aguilar", phone: "03294183597", age: "81", email: "AnnetteNAguilar@dayrep.com", address: "Piazza della Repubblica, 123")]

	
    override func viewDidLoad() {
        super.viewDidLoad()
		self.details = self.storyboard?.instantiateViewController(withIdentifier: "details") as? FriendDetailsViewController
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return Friends.count
    }
	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return "Friends List"
	}

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		cell.textLabel?.text = Friends[indexPath.row].name
        return cell
    }
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 50
	}
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let friend = Friends[indexPath.row]
		details.friend = friend
		self.navigationController?.pushViewController(details, animated: true)
	}

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
