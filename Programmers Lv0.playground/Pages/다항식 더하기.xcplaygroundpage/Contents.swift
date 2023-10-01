import Foundation

func solution(_ polynomial:String) -> String {
	let arr: [String] = polynomial.components(separatedBy: " ")
	var x: Int = 0
	var num: Int = 0
	var result: String = ""
	arr.forEach {
		if $0.contains("x") {
			if $0.count > 1 { x += Int($0.components(separatedBy: "x").joined())! }
			else { x += 1 }
		} 
		if !$0.contains("x") && !$0.contains("+") {
			num += Int($0)!
		}
	}
	if x == 1 { result += "x" }
	else if x > 1 { result += String(x) + "x" }
	
	if result.isEmpty { result += String(num) }
	else {
		if num != 0 { result += " + " + String(num) }
	}
	return result
}
solution("3x + 7 + x")
solution("x + x + x")
solution("1")
