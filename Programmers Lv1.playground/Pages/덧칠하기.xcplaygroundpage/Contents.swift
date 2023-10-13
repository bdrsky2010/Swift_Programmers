import Foundation

// 원래코드
func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
	var wall: [Bool] = Array(repeating: true, count: n)
	var result: Int = 0
	section.forEach { wall[$0 - 1] = false }
	for i in 0..<wall.count {
		if !wall[i] {
			result += 1
			var cnt: Int = 0
			for j in i..<wall.count {
				if cnt == m { break }
				if !wall[j] { wall[j] = true }
				cnt += 1
			}
		}
	}
	return result
}

// 코드 리팩토링
func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
	guard !section.isEmpty else { return 0 }
	var start: Int = section.first!
	var cnt: Int = 0
	for s in section {
		if s >= start {
			start = s + m
			cnt += 1
		}
	}
	return cnt
}
