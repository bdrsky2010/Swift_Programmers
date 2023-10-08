import Foundation

// 원래 풀이
func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
	let score: [Int] = score.sorted(by: >)
	let boxCnt: Int = score.count / m
	var total: Int = 0
	for i in 0..<boxCnt {
		let start: Int = i * m
		let end: Int = start + m - 1
		let box: [Int] = Array(score[start...end])
		total += (box.min()! * box.count)
	}
	return total
}

// 코드 리팩토링
func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
	let score: [Int] = score.sorted(by: >)
	return stride(from: m - 1, to: score.count, by: m).reduce(0) { $0 + (score[$1] * m) }
}
