//
//  MovieViewController.swift
//  MovieListAPI
//
//  Created by AbdelRahman AbdelFattah on 18/02/2022.
//

import UIKit

struct Movie{
	let title:String
	let image:String
	let rating:Double
	let releaseYear:Int
	let genre:[String]
}
class MovieViewController: UIViewController {
	var data:[String: Any]?
	@IBOutlet weak var image: UIImageView!
	@IBOutlet weak var name: UILabel!
	@IBOutlet weak var rating: UILabel!
	@IBOutlet weak var year: UILabel!
	@IBOutlet weak var genre: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	override func viewWillAppear(_ animated: Bool) {
		let movie = Movie(title: (self.data?["title"] as? String)!, image: (self.data?["image"] as? String)!, rating: (self.data?["rating"] as? Double)!, releaseYear: (self.data?["releaseYear"] as? Int)!, genre: (self.data?["genre"] as? [String])!)
		self.image.image = nil
		name.text = movie.title
		rating.text = String(format: "%.1f", movie.rating) + " / 10"
		year.text =  String(format: "%d", movie.releaseYear)
		genre.text = ""
		for i in 0..<movie.genre.count-1{
			genre.text! += movie.genre[i] + ", "
		}
		genre.text! += movie.genre[movie.genre.count-1]
		let url = URL(string: movie.image)
		let request = URLRequest(url: url!)
		let session = URLSession(configuration: .default)
		let task = session.dataTask(with: request) { (data, response, error) in
			do{
				let temp = UIImage(data: data!)
				DispatchQueue.main.async {
					self.image.image = temp
				}
			}
		}
		task.resume()
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
