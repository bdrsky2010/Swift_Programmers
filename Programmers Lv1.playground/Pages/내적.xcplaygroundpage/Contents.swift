import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
	var answer = 0
	for index in 0..<a.count {
		print(a[index] * b[index])
		answer = answer + (a[index] * b[index])
	}
	return answer
}
solution([1,2,3,4], [-3,-1,0,2])

// 다른 풀이
func solution1(_ a:[Int], _ b:[Int]) -> Int {
	return zip(a, b).map(*).reduce(0, +)
}
solution1([1,2,3,4], [-3,-1,0,2])
