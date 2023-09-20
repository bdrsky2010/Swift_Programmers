import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
	var result: [String:Int] = [:]
	var answer: String = ""
	for (i, score) in choices.enumerated() {
		let type = survey[i].map { $0 }
		switch score {
		case 1, 2, 3:
			result[String(type[0])] = (result[String(type[0])] ?? 0) + (4 - score)
			break
		case 5, 6, 7:
			result[String(type[1])] = (result[String(type[1])] ?? 0) + (score - 4)
			break
		default:
			break
		}
	}
	(result["R"] ?? 0) >= (result["T"] ?? 0) ? answer.append("R") : answer.append("T")
	(result["C"] ?? 0) >= (result["F"] ?? 0) ? answer.append("C") : answer.append("F")
	(result["J"] ?? 0) >= (result["M"] ?? 0) ? answer.append("J") : answer.append("M")
	(result["A"] ?? 0) >= (result["N"] ?? 0) ? answer.append("A") : answer.append("N")
	return answer
}
solution(["AN", "CF", "MJ", "RT", "NA"], [5, 3, 2, 7, 5])
