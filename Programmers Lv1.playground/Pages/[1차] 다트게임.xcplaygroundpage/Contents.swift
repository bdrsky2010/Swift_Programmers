import Foundation

func solution(_ dartResult:String) -> Int {
	var score = dartResult.split(whereSeparator: {$0.isLetter || $0 == "#" || $0 == "*"}).map {Int($0)!}
	var bonus = dartResult.split(whereSeparator: {$0.isNumber})

	for (index, str) in bonus.enumerated() {
		for c in str {
			switch c {
			case "S":
				break
			case "D":
				score[index] *= score[index]
				break
			case "T":
				score[index] *= score[index] * score[index]
				break
			case "*":
				if index > 0 {
					score[index - 1] *= 2
				}
				score[index] *= 2
				break
			case "#":
				score[index] = -score[index]
			default:
				break
			}
		}
	}
	return score.reduce(0, +)
}
solution("1S2D*3T")
