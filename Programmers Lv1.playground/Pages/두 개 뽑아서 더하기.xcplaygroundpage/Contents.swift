import Foundation

func solution(_ numbers:[Int]) -> [Int] {
	var set: Set<Int> = []
	for (index, num) in numbers.enumerated() {
		for i in (index + 1)..<numbers.count {
			set.insert(num + numbers[i])
		}
	}
	return set.sorted()
}
solution([2,1,3,4,1])
