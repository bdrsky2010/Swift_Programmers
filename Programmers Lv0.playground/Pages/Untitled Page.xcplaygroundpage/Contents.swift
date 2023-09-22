import Foundation

func solution(_ n:Int) -> Int {
		return (2...n).filter {
			var check: Bool = true
			for devide in 1...$0 {
				if $0 % devide == 0 && devide != 1 && devide != $0 {
					check = false
					break
				}
			}
			return check
		}.count
}
solution(10)
