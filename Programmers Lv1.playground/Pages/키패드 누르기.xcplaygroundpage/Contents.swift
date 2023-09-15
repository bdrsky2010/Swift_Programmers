import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
	let keypad = [
		1: (0,0), 2: (0,1), 3: (0,2),
		4: (1,0), 5: (1,1), 6: (1,2),
		7: (2,0), 8: (2,1), 9: (2,2),
		-1: (3,0), 0: (3,1), -2: (3,2)
	]
	var (left, right) = (-1, -2)
	var answer: String = ""
	for num in numbers {
		let leftDiff = abs(keypad[left]!.0 - keypad[num]!.0) + abs(keypad[left]!.1 - keypad[num]!.1)
		let rightDiff = abs(keypad[right]!.0 - keypad[num]!.0) + abs(keypad[right]!.1 - keypad[num]!.1)
		print(leftDiff, rightDiff)
		switch num {
		case 1,4,7:
			left = num
			answer.append("L")
			break
		case 3,6,9:
			right = num
			answer.append("R")
			break
		case 2,5,8,0:
			if leftDiff < rightDiff {
				left = num
				answer.append("L")
			} else if leftDiff > rightDiff {
				right = num
				answer.append("R")
			} else {
				if hand == "left" {
					left = num
					answer.append("L")
				} else {
					right = num
					answer.append("R")
				}
			}
			break
		default:
			break
		}
	}
	return answer
}
solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right")
