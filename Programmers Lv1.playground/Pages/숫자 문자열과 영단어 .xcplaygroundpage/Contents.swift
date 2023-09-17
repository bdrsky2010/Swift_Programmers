import Foundation

//func solution(_ s:String) -> Int {
//	var answer: [String] = []
//	var strNum: String = ""
//	for c in s {
//		if c.isNumber { answer.append(String(c)) }
//		else {
//			strNum.append(String(c))
//			switch strNum {
//			case "zero":
//				answer.append("0")
//				strNum = ""
//				break
//			case "one":
//				answer.append("1")
//				strNum = ""
//				break
//			case "two":
//				answer.append("2")
//				strNum = ""
//				break
//			case "three":
//				answer.append("3")
//				strNum = ""
//				break
//			case "four":
//				answer.append("4")
//				strNum = ""
//				break
//			case "five":
//				answer.append("5")
//				strNum = ""
//				break
//			case "six":
//				answer.append("6")
//				strNum = ""
//				break
//			case "seven":
//				answer.append("7")
//				strNum = ""
//				break
//			case "eight":
//				answer.append("8")
//				strNum = ""
//				break
//			case "nine":
//				answer.append("9")
//				strNum = ""
//				break
//			default:
//				break
//			}
//		}
//	}
//	return Int(answer.joined())!
//}

// 다른 풀이
func solution(_ s:String) -> Int {
	var answer: String = s
	var num = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	for (index, number) in num.enumerated() {
		answer = answer.replacingOccurrences(of: number, with: String(index))
	}
	return Int(answer)!
}
solution("one4seveneight")
solution("23four5six7")
solution("2three45sixseven")
solution("123")
