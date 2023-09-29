import Foundation

func solution(_ quiz:[String]) -> [String] {
	return quiz.map {
		let arr: [String] = $0.components(separatedBy: " ")
		let num1: Int = Int(String(arr[0]))!
		let num2: Int = Int(String(arr[2]))!
		let result: Int = Int(String(arr[4]))!
		if arr[1] == "+" {
			if num1 + num2 == result { return "O"}
			else { return "X" }
		} else {
			if num1 - num2 == result { return "O"}
			else { return "X" }
		}
	}
}

// 다른 코드 방식으로 풀어본 코드
func solution1(_ quiz:[String]) -> [String] {
	return quiz.map {
		let arr: [String] = $0.components(separatedBy: " ")
		switch arr[1] {
		case "+":
			return Int(String(arr[0]))! + Int(String(arr[2]))! == Int(String(arr[4]))! ? "O" : "X"
		case "-":
			return Int(String(arr[0]))! - Int(String(arr[2]))! == Int(String(arr[4]))! ? "O" : "X"
		default:
			break
		}
		return ""
	}
}
solution(["3 - 4 = -3", "5 + 6 = 11"]	)
solution(["19 - 6 = 13", "5 + 66 = 71", "5 - 15 = 63", "3 - 1 = 2"])
