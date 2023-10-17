import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
	if l < 5 || r < 5 { return [-1] }
	var result: [Int] = ((l / 5)...(r / 5)).filter {
		let arr: [String] = String($0 * 5).map { String($0) }
		for i in 0..<arr.count {
			if arr[i] != "5" && arr[i] != "0" { return false }
		}
		return true
	}
	return result == [] ? [-1] : result.map { $0 * 5 }
}
