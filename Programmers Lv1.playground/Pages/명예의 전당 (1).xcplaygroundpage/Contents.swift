import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
	var arr: [Int] = []
	return score.map {
		if arr.last ?? -1 < $0 {
			if arr.count == k { arr.removeLast() }
			arr.append($0)
			arr = arr.sorted(by: >)
		} else if arr.count < k {
			arr.append($0)
			arr = arr.sorted(by: >)
		}
		return arr.last!
	}
}
