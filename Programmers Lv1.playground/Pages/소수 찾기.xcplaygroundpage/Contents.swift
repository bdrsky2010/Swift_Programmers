import Foundation

func solution(_ n:Int) -> Int {
	if n == 2 { return 1 }
	var arr: [Int] = []
	for number in 2...n {
		var flag: Bool = true
		// 약수는 대칭으로 이루어져있다.
		// 예를들어 n이 20이면 n의 약수는 1, 2, 4, 5, 10, 20
		// 1은 소수가 될 수 없기 때문에
		// 2부터 4까지만 순회하면 되는 것이다
		for devide in 2..<Int(sqrt(Double(number)) + 1) {
			if number % devide == 0 {
				flag = false
				break
			}
		}
		if flag { arr.append(number) }
	}
	return arr.count
}
