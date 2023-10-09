import Foundation

// 원래 풀이
func solution(_ babbling:[String]) -> Int {
	var babbling: [String] = babbling
	babbling.indices.forEach {
		babbling[$0] = babbling[$0].replacingOccurrences(of: "aya", with: "1")
		babbling[$0] = babbling[$0].replacingOccurrences(of: "ye", with: "2")
		babbling[$0] = babbling[$0].replacingOccurrences(of: "woo", with: "3")
		babbling[$0] = babbling[$0].replacingOccurrences(of: "ma", with: "4")
	}
	return babbling.map {
		for i in $0.indices {
			if !$0[i].isNumber { return false }
		}
		return true
	}.reduce(0) { return $1 ? $0 + 1 : $0 }
}

// 코드 리팩토링
// 위 코드에서 굳이 forEach 문으로 순회하고
// 또 map 고차함수를 통해 순회하며
// 반복문을 2번이나 실행할 필요가 없기 때문에
// 그 두 반복문을 합쳐 indices.map 을통해 진행하였다
func solution2(_ babbling:[String]) -> Int {
	var babbling:[String] = babbling
	return babbling.indices.map {
		babbling[$0] = babbling[$0].replacingOccurrences(of: "aya", with: "1")
		babbling[$0] = babbling[$0].replacingOccurrences(of: "ye", with: "2")
		babbling[$0] = babbling[$0].replacingOccurrences(of: "woo", with: "3")
		babbling[$0] = babbling[$0].replacingOccurrences(of: "ma", with: "4")
		for i in babbling[$0].indices {
			if !babbling[$0][i].isNumber { return false }
		}
		return true
	}.reduce(0) { return $1 ? $0 + 1 : $0 }
}
