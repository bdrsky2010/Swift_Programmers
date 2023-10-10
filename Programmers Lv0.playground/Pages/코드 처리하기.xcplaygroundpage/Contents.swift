import Foundation

// 원래 풀이
func solution(_ code:String) -> String {
	var mode: Int = 0
	var index: Int = 0
	let result: String = code.indices.map { i in
		if mode == 0 {
			if code[i] == "1" {
				mode = 1
				index += 1
				return ""
			} else if index % 2 == 0 {
				index += 1
				return String(code[i])
			} else {
				index += 1
				return ""
			}
		}
		if code[i] == "1" {
			mode = 0
			index += 1
			return ""
		} else if index % 2 == 1 {
			index += 1
			return String(code[i])
		} else {
			index += 1
			return ""
		}
	}.joined()
	return result.isEmpty ? "EMPTY" : result
}

// 코드 리팩토링
// mode의 값이 0과 1밖에 없기때문에 Bool타입 변수로 변경하여 메모리를 절약
// 굳이 index를 가지고 다닐 필요없이 enumerated() 메서드를 통해 인덱스와 값을 함께 get
// 그외 나머지는 동일
func solution2(_ code:String) -> String {
	var mode: Bool = false
	var result: String = ""
	code.enumerated().forEach { (index, char) in
		let s: String = String(char)
		if s == "1" { mode.toggle() }
		else {
			if mode && index % 2 != 0 { result.append(s) }
			else if !mode && index % 2 == 0 { result.append(s) }
		}
	}
	return result.isEmpty ? "EMPTY" : result
}
