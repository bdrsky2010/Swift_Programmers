import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
	var lostArr = Set(lost).subtracting(reserve).sorted()
	var reserveArr = Set(reserve).subtracting(lost).sorted()
	for reserve in reserveArr {
		if reserve > 1 && lostArr.contains(reserve - 1) {
			lostArr.remove(at: lostArr.firstIndex(of: reserve - 1)!)
		} else if lostArr.contains(reserve + 1) {
			lostArr.remove(at: lostArr.firstIndex(of: reserve + 1)!)
		}
	}
	return n - lostArr.count
}
solution(5, [2, 3, 5], [2, 3, 4])
