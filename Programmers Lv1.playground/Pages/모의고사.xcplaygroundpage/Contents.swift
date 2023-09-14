import Foundation

func solution(_ answers:[Int]) -> [Int] {
	let std1 = [1, 2, 3, 4, 5]
	let std2 = [2, 1, 2, 3, 2, 4, 2, 5]
	let std3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
	var score: [Int:Int] = [1:0, 2:0, 3:0]

	for i in 0..<answers.count {
		let num1 = i % std1.count
		let num2 = i % std2.count
		let num3 = i % std3.count

		if answers[i] == std1[num1] { score[1]! += 1 }
		if answers[i] == std2[num2] { score[2]! += 1 }
		if answers[i] == std3[num3] { score[3]! += 1 }
	}
	return score.filter { $0.value == score.values.max() }.keys.sorted()
}
solution([1,2,3,4,5])
