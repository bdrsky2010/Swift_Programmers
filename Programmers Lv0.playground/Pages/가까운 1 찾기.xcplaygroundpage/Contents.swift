import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
		return arr.enumerated()
		.filter { $0.offset >= idx && $0.element == 1 }
		.first?.offset ?? -1
}
