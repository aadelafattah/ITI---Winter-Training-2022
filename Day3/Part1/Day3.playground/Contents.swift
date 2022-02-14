import UIKit

class Caculator{
	var num1:Double
	var num2:Double
	init(num1:Double, num2:Double){
		self.num1=num1
		self.num2 = num2
	}
	func add(){
		print(self.num1 + self.num2)
	}
	func sub(){
		print(self.num1 - self.num2)
	}
	func multi(){
		print(self.num1 * self.num2)
	}
	func divide(){
		if(self.num2 != 0){
			print(self.num1 / self.num2)
		}else{
			print("Can't divide by zero")
		}
	}
}

var example1 = Caculator(num1: 2, num2: 16)
example1.add()
example1.sub()
example1.divide()
example1.multi()

extension Caculator{
	func power(){
		print(pow(self.num1,self.num2))
	}
	func squaring(){
		print("num1^2 = \(pow(self.num1,2))")
		print("num2^2 = \(pow(self.num2,2))")
	}
}

example1.squaring()
example1.power()


protocol MyProtocol{
	func calcArea() -> Double
	func printShapeName()
}
class Rectangle:MyProtocol{
	var length:Double
	var width:Double
	init(length:Double,width:Double){
		self.length = length
		self.width = width
	}
	func calcArea()-> Double {
		return self.length*self.width
	}
	
	func printShapeName() {
		print("My Name is Rectangle")
	}
	
	
}
class Triangle:MyProtocol{
	var height:Double
	var base:Double
	init(height:Double,base:Double){
		self.height = height
		self.base = base
	}
	func calcArea() -> Double{
		return(0.5*self.height*self.base)
	}
	func printShapeName() {
		print("My Name is Triangle")
	}
}


var tri = Triangle(height: 5, base: 5)
var rec = Rectangle(length: 5, width: 5)

print(tri.calcArea())
print(rec.calcArea())

tri.printShapeName()
rec.printShapeName()
