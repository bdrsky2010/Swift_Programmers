import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
	var failure = [(Int, Double)]()
	var player = stages.count

	for i in 1...N {
		var fail: Int = 0
		for j in 0..<stages.count {
			if stages[j] == i {
				fail += 1
			}
		}
		player -= fail
		failure.append((i, Double(fail) / Double(player)))
	}
	return failure.sorted { $0.1 > $1.1 }.map { $0.0 }
}
solution(5, [2, 1, 2, 6, 2, 4, 3, 3])
