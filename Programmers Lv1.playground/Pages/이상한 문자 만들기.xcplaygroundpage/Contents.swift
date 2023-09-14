//: [Previous](@previous)

import Foundation

func solution(_ s:String) -> String {
	var answer = ""
	var index = 0
	for c in s {
		if c == " " {
			answer.append(c)
			index = 0
			continue
		}
		if index % 2 == 0 {
			answer.append(c.uppercased())
			index += 1
		} else {
			answer.append(c.lowercased())
			index += 1
		}
	}
	return answer
}
solution("try hello world")
