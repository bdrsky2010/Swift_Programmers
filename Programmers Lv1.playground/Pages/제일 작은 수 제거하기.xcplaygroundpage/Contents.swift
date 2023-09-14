import Foundation

func solution(_ arr:[Int]) -> [Int] {
	guard arr.count > 1 else { return [-1] }
	var index = 0
	var min = arr.sorted(by: >)[0]
	for i in 0..<arr.count {
		if arr[i] < min {
			min = arr[i]
			index = i
		}
	}
	var arr2 = arr
	arr2.remove(at: index)
	return arr2
}
solution([4,3,2,1])
