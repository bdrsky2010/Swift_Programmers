import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
	return (0..<absolutes.count).map { signs[$0] ? absolutes[$0] : -absolutes[$0] }.reduce(0, +)
}
solution([4,7,12], [true, false, true])
