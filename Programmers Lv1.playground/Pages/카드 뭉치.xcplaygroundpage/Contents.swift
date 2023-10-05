import Foundation

// 원래 풀이
func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
	var sentence: [String] = []
	var cards1:[String] = cards1
	var cards2:[String] = cards2
	goal.forEach { word in
		if cards1.contains(word) && !cards1.isEmpty {
			sentence.append(cards1.removeFirst())
		}
		else if cards2.contains(word) && !cards2.isEmpty {
			sentence.append(cards2.removeFirst())
		}
	}
	return sentence == goal ? "Yes" : "No"
}

// 리팩토링을 통한 다른 풀이
func solution2(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
	var cards1:[String] = cards1
	var cards2:[String] = cards2
	for word in goal {
		if !cards1.isEmpty && cards1.first == word { cards1.removeFirst() }
		else if !cards2.isEmpty && cards2.first == word { cards2.removeFirst() }
		else { return "No" }
	}
	return "Yes"
}
