import Foundation

func solution(_ n:Int64) -> Int64 {
	var num = Int64(sqrt(Double(n)))
	return num * num == n ? (num + 1) * (num + 1) : -1
}

solution(121)
