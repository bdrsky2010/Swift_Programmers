import Foundation

func solution(_ numbers:[Int]) -> Int {
	return (0...9).reduce(0, { numbers.contains($1) ? $0 + 0 : $0 + $1 })
}
solution([1,2,3,4,6,7,8,0])
solution([5,8,4,0,6,7,9])
