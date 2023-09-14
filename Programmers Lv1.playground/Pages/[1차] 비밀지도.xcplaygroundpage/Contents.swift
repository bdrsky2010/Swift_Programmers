import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
	return (0..<n).map {
		var binary = String(arr1[$0] | arr2[$0], radix: 2)
		var tr_binary = String(repeating: "0", count: n-binary.count) + binary
		return tr_binary.reduce("", {$0 + ($1 == "0" ? " " : "#")})
	}
}
solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])
