import Foundation

var greeting = "Hello, playground"

func solution(_ n:Int64) -> Int64 {
	return Int64(String(String(n).sorted(by: >)))!
}
solution(118372)
