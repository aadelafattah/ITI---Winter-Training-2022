//
//  MoviesTableViewController.swift
//  MovieListAPI
//
//  Created by AbdelRahman AbdelFattah on 17/02/2022.
//

import UIKit

class MoviesTableViewController: UITableViewController {
	var array:Array<Dictionary<String,Any>>?
	var details:MovieViewController?
	override func viewDidLoad() {
		super.viewDidLoad()
		details = self.storyboard?.instantiateViewController(withIdentifier: "movieDetails") as? MovieViewController
		let url = URL(string: "https://api.androidhive.info/json/movies.json")
		let request = URLRequest(url: url!)
		let session = URLSession(configuration: .default)
		let task = session.dataTask(with: request) { (data, response, error) in
			do{
				self.array = try JSONSerialization.jsonObject(with: data! , options: .allowFragments) as? Array<Dictionary<String , Any>>
				DispatchQueue.main.async {
					self.loadView()
				}
			}catch let error {
				print(error.localizedDescription)
			}
		}
		task.resume()
	}

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
		return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		if let count = array{
			return count.count
		}else{
			return 5
		}
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "movie", for: indexPath)
		if let array = array {
			cell.textLabel?.text = array[indexPath.row]["title"] as? String
			let rating = array[indexPath.row]["rating"]! as! Double
			cell.detailTextLabel?.text = String(format: "%.1f", rating) + " / 10"
		}else{
			cell.textLabel?.text = "title"
			cell.detailTextLabel?.text = "subtitle"
		}
        return cell
    }
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let movie = self.array?[indexPath.row]
		details?.data = movie
		self.navigationController?.pushViewController(details!, animated: true)
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
