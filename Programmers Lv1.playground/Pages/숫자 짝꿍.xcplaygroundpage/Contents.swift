import Foundation

// 11 ~ 15 시간초과
// 16, 17 실패
func solution1(_ X:String, _ Y:String) -> String {
	var Y: [String] = Y.map { String($0) }.sorted(by: >)
	var arr: [String] = []
	var result: String = ""
	var flag: Bool = true
	for numberX in X.sorted(by: >) {
		for (i, numberY) in Y.enumerated() {
			if String(numberX) == numberY {
				Y[i] = "."
				arr.append(String(numberX))
				flag = false
				break
			}
		}
	}
	if flag { return "-1" }
	for i in 0..<arr.count {
		result += arr[i]
	}
	return result
}

func solution(_ X:String, _ Y:String) -> String {
	// 1~10의 숫자가 몇 개 있는 지 카운트하기 위한 배열
	var countX: [Int] = Array(repeating: 0, count: 10)
	var countY: [Int] = Array(repeating: 0, count: 10)
	
	var result: String = ""
	
	// 몇 개 있는 지 카운트
	for number in X { countX[Int(String(number))!] += 1 }
	for number in Y { countY[Int(String(number))!] += 1 }
	
	// 0 ~ 9 를 역순으로 순회하면서 두 수가 0보다 클 때 더 작은 갯수만큼 문자열에 추가
	for i in stride(from: 9, through: 0, by: -1) {
		if countX[i] > 0 && countY[i] > 0 {
			result += String(repeating: String(i), count: min(countX[i], countY[i]))
		}
	}
	if result.isEmpty { return "-1" }
	if result.first! == "0" { return "0" }
	return result
}
solution("100", "2345")
solution("100", "203045")
solution("5525", "1255")
