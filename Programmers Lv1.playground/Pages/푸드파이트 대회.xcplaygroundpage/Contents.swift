import Foundation

func solution(_ food:[Int]) -> String {
	var result: String = ""
	food.indices.forEach {
		result +=  String(repeating: String($0), count: food[$0] / 2)
	}
	return result + "0" + result.reversed()
}

// 다른 풀이
func solution2(_ food:[Int]) -> String {
	let result: String = food.enumerated().map { index, _ in
		return String(repeating: String(index), count: food[index] / 2)
	}.joined()
	return result + "0" + result.reversed()
}
solution2([1, 3, 4, 6])
