import Foundation

func solution(_ str1:String, _ str2:String) -> String {
	var result: String = ""
	var str1 = str1
	var str2 = str2
	while !str1.isEmpty && !str2.isEmpty {
		if !str1.isEmpty {
			result += str1.prefix(1)
			str1.removeFirst()
		}
		if !str2.isEmpty {
			result += str2.prefix(1)
			str2.removeFirst()
		}
	}
	return result
}

solution("aaaaa", "bbbbb")

// 다른 풀이
func solution2(_ str1:String, _ str2:String) -> String {
	var result: String = ""
	for index in str1.indices {
		result.append(str1[index])
		result.append(str2[index])
	}
	return result
}

solution2("aaaaa", "bbbbb")

// 또 다른 풀이
func solution3(_ str1:String, _ str2:String) -> String {
	var result: String = ""
	var index = str1.startIndex
	while index != str1.endIndex {
		result.append(str1[index])
		result.append(str2[index])
		index = str1.index(after: index)
	}
	return result
}

solution3("aaaaa", "bbbbb")
