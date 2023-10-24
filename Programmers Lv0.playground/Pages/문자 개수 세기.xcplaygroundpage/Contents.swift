import Foundation

func solution(_ my_string:String) -> [Int] {
	return my_string.reduce(into: Array(repeating: 0, count: 52)) {
		if $1.isUppercase { $0[Int($1.asciiValue!) - 65] += 1 }
		else { $0[Int($1.asciiValue!) - 71] += 1 }
	}
}
