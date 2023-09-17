import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
	return Array(left...right).map {
		var count = 0
		for n in 1..<$0+1 {
			if $0 % n == 0 { count += 1 }
		}
		return count % 2 == 0 ? $0 : -$0
	}.reduce(0, +)
}
solution(13, 17)
solution(24, 27)
