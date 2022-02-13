import UIKit

func factorial(_ num: Int) -> Int{
	var result = 1;
	for i in 1...num{
		result *= i;
	}
	return result;
}

func calcPowerLoop(_ num: Int ,_ power: Int) -> Int{
	var result = 1
	for _ in 0..<power{
		result *= num
	}
	return result
}

func calcPowerRecursion(_ num: Int ,_ power: Int) -> Int{
	if (power != 0){
		return (num * calcPowerRecursion(num, power - 1));
	}
	return 1
}

func sortArray(_ unsortedArray: [Int]) -> [Int]{
	var array = unsortedArray
	for i in 0..<array.count-1{
		for j in 0..<array.count-i-1{
			if(array[j]>array[j+1]){
				let temp = array[j+1]
				array[j+1] = array[j]
				array[j] = temp
			}
		}
	}
	return array
}

print(factorial(10))
print(calcPowerLoop(5,5))
print(calcPowerRecursion(5,5))
print(sortArray([23,382,314,455,7,923,0,1,2,3,136,9,0,13]))
