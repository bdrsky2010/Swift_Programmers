import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
	var total = budget
	return d.sorted().filter {
		total -= $0
		return total >= 0
	}.count
}
solution([1,3,2,5,4], 9)
