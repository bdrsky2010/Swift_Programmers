import Foundation

func solution(_ array:[Int]) -> Int {
	var dic: [Int:Int] = [:]
	var max: Int = 0
	var cnt: Int = 0
	for num in array {
		dic[num] = (dic[num] ?? 0) + 1
	}
	for (num, count) in dic {
		if count == dic.values.max() {
			cnt += 1
			max = num
		}
	}
	return cnt > 1 ? -1 : max
}
