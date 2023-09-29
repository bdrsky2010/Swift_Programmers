import Foundation

func solution(_ quiz:[String]) -> [String] {
	return quiz.map {
		var arr = $0.map { input in
			print(input)
			if input == " " { return ""}
			return String(input)
		}.joined().map { $0 }
		print(arr)
//		let num1: Int = Int(String(arr[0]))!
//		let num2: Int = Int(String(arr[2]))!
//		let result: Int = Int(String(arr[4]))!
//		if arr[1] == "+" {
//			if num1 + num2 == result { return "O" }
//			else { return "X"}
//		} else {
//			if num1 - num2 == result { return "O" }
//			else { return "X"}
//		}
		return "X"
	}
}
solution(["3 - 4 = -3", "5 + 6 = 11"]	)
