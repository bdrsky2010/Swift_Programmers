import Foundation

func solution(_ quiz:[String]) -> [String] {
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
