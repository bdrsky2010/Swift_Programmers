import Foundation

func solution(_ num:Int) -> Int {
	var total = 0
	var result = num
	while total != 500 {
		if result == 1 { return total }
		if result % 2 == 0 {
			result /= 2
			total += 1
		} else {
			result = result * 3 + 1
			total += 1
		}
	}
	return -1
}
solution(16)
