import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
	return my_string
		.map { String($0) }
		.enumerated()
		.map { indices.contains($0.offset) ? "" : $0.element }
		.joined()
}
solution("apporoograpemmemprs", [1, 16, 6, 15, 0, 10, 11, 3])
