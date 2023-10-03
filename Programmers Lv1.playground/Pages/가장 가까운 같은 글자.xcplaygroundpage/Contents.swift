import Foundation

func solution(_ s:String) -> [Int] {
	let s: [String] = s.map { String($0) }
	return s.enumerated().map { index, str in
		return index - (s[0..<index].lastIndex(of: str) ?? index + 1)
	}
}
