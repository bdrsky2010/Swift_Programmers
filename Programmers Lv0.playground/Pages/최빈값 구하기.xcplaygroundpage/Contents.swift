import Foundation

// 순회하면서 set원소들이 속한 array에서의 개수를 카운트
func solution(_ array:[Int]) -> Int {
		let nums = Set(array).sorted()
		var cnt: [Int] = Array(repeating: 0, count: nums.count)
		var (max, maxIndex, maxCnt): (Int, Int, Int) = (0, 0, 0)
		for i in 0..<nums.count {
				for j in 0..<array.count {
						if nums[i] == array[j] { cnt[i] += 1 }
				}
		}
		for i in 0..<cnt.count {
				if max < cnt[i] { (max, maxIndex) = (cnt[i], i) }
		}
		for i in 0..<cnt.count {
				if max == cnt[i] { maxCnt += 1 }
		}
		
		return maxCnt > 1 ? -1 : nums[maxIndex]
}

// 다른 풀이
func solution2(_ array:[Int]) -> Int {
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
