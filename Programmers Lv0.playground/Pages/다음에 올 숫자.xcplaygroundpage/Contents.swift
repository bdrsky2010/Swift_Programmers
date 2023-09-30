import Foundation

func solution(_ common:[Int]) -> Int {
	var art: Set<Int> = []
	var geo: Set<Int> = []
	var beforeNum: Int = common.first!
	for i in 1..<common.count {
		art.insert(beforeNum - common[i])
		if beforeNum != 0 { geo.insert(common[i] / beforeNum) }
		beforeNum = common[i]
	}
	// 등차
	if art.count == 1 && art.first! < 0 { return common.last! + -art.first! }
	else if art.count == 1 && art.first! > 0 { return common.last! - art.first! }
	// 등비
	if geo.count == 1 && geo.first! != 0 { return common.last! * geo.first! }
	return 0
}

solution([1, 2, 3, 4])
solution([2, 4, 8])
