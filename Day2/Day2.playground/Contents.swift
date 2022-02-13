import UIKit

class Person{
	var salary: Int = 500
	func getSalary(years:Int)-> Int{
		return self.salary*years
	}
}

class Manager: Person{
	override func getSalary(years: Int) -> Int {
		return 5*self.salary*years
	}
}

class Employee: Person{
	override func getSalary(years: Int) -> Int {
		return 2*self.salary*years
	}
}

class Movie{
	let title:String
	let image:String
	let rating:Float
	let releaseYear:Int
	let genre:[String]
	init(title:String, image:String, rating:Float, year:Int, genre:[String]){
		self.title = title
		self.image = image
		self.rating = rating
		self.releaseYear = year
		self.genre = genre
	}
	subscript(index:Int)->String{
		get{
			return genre[index]
		}
	}
}

let movie1 = Movie(title:
					"The Shawshank Redemption", image: "https://www.imdb.com/title/tt0111161/mediaviewer/rm10105600/", rating: 9.3, year: 1994, genre: ["Drama"])
let movie2 = Movie(title: "The Godfather", image: "https://www.imdb.com/title/tt0068646/mediaviewer/rm746868224/", rating: 9.2, year: 1972, genre: ["Crime","Drama"])
let movie3 = Movie(title: "The Godfather: Part II", image: "https://www.imdb.com/title/tt0071562/mediaviewer/rm4159262464/", rating: 9.0, year: 1974, genre: ["Crime","Drama"])
let movie4 = Movie(title: "The Dark Knight", image: "https://www.imdb.com/title/tt0468569/mediaviewer/rm4023877632/", rating: 9.0, year: 2008, genre: ["Action","Crime","Drama","Thriller"])
let movie5 = Movie(title: "12 Angry Men", image: "https://www.imdb.com/title/tt0050083/mediaviewer/rm2927108352/", rating: 9.0, year: 1957, genre: ["Crime","Drama"])

var movies = [movie1,movie2,movie3,movie4,movie5]

movies.forEach{ movie in
	print("\(movie.title) was made in \(movie.releaseYear) and has a rating of \(movie.rating)/10")
}
