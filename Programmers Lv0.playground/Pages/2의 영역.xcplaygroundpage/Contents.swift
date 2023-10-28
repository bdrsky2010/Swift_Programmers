//: [Previous](@previous)

import Foundation

func solution(_ arr:[Int]) -> [Int] {
	guard let start = arr.firstIndex(where: { $0 == 2 }), let end = arr.lastIndex(where: { $0 == 2 }) else { return [-1] }
	return Array(arr[start...end])
}
solution([1, 2, 1, 4, 5, 2, 9])
