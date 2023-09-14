import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
	return commands.map {
		array[$0[0]-1...$0[1]-1].sorted()[$0[2]-1]
	}
}
solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])
