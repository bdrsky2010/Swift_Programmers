import Foundation

// 1. 배열을 순회하며 값을 확인한다
// 2. 해당 값을 문자열 변수(beforeStr)에 담아준다
// 3. 해당 값의 요소 하나하나 다시 순회하며
// 4. 한 문자씩 문자열 변수(newStr)에 담아주면서
// 5. 값 전체가 담겨있는 문자열에서 삭제
// 6. 담아준 문자열이 babb 문자열 배열에 존재하는지 검사
// 7. 존재한다면 boolean 변수에 true를 담아준다
// 8. 문자열 변수(newStr)의 count 만큼
// 9. 값 전체가 담겨있는 문자열 변수(beforeStr)의 prefix 메서드를 사용하여
// 10. 문자열 변수(newStr)와 동일한 값이 존재하면 break로 탈출
// 11. 위 조건에서 걸리지 않았다면 문자열 변수(newStr) 빈 문자열로 초기화
// 11. 마지막에 값 전체가 담겨있는 문자열의 카운트가 0일 때
// 12. boolean 변수의 값이 true일 때
// 13. 둘 다 참이면 cnt를 +1 해준다
func solution(_ babbling:[String]) -> Int {
	let babb: [String] = ["aya", "ye", "woo", "ma"]
	var cnt: Int = 0
	babbling.forEach {
		var beforeStr: String = $0
		var newStr: String = ""
		var check: Bool = false
		for char in $0 {
			newStr.append(String(char))
			beforeStr.removeFirst()
			if babb.contains(where: { $0 == newStr }) {
				check = true
				if beforeStr.prefix(newStr.count) == newStr {
					check = false
					break
				}
				newStr = ""
			}
		}
		if check && newStr.isEmpty {
			cnt += 1
		}
	}
	return cnt
}

// 다른 사람 풀이
func solution2(_ babbling:[String]) -> Int {
		var count: Int = 0
		for element in babbling {
				var str = String(element)
				str = str.replacingOccurrences(of: "aya", with: "1")
				str = str.replacingOccurrences(of: "ye", with: "2")
				str = str.replacingOccurrences(of: "woo", with: "3")
				str = str.replacingOccurrences(of: "ma", with: "4")
				if Int(str) != nil && !str.contains("11") && !str.contains("22") && !str.contains("33") && !str.contains("44"){
						count += 1
				}
		}
		return count
}
