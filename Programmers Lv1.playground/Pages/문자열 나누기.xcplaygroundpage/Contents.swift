import Foundation

// 원래 코드
func solution(_ s:String) -> Int {
	var s: String = s
	var x: Character = s.first!
	var (yesX, notX, result): (Int, Int, Int) = (0, 0, 0)
	var str: String = ""
	while !s.isEmpty {
		let c: Character = s.removeFirst()
		if c == x { yesX += 1 }
		else { notX += 1 }
		str.append(String(c))
		if yesX == notX {
			result += 1
			str = ""
			x = s.first ?? Character(" ")
			(yesX, notX) = (0, 0)
			
		}
	}
	if !str.isEmpty { result += 1 }
	return result
}

// 코드 리팩토링
func solution(_ s:String) -> Int {
	return 0
}
