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
// 처음에는 리턴해줄 문자열 타입의 배열에 조건이 성립됐을 때 값을 담아주고
// 각각의 카드에서 해당 요소를 삭제해주고 for문이 다 돌고난 후 
// goal과 sentence가 같다면 Yes
// goal과 sentence가 같지않다면 No를 리턴했지만
// 다시 생각해보니 요소를 담지 않고 for문을 돌며 goal의 요소와 각각의 card의 요소를 확인 후
// card1과 card2 모두 goal의 요소가 포함되어 있지 않다면 No를 리턴해주는 방식으로 바꿨다.
// 이런식으로 코드를 바꿔준다면 처음 풀이보다 시간도 메모리도 절약할 수 있다
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
