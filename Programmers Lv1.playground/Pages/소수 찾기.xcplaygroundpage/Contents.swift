import Foundation

func solution(_ n:Int) -> Int {
	if n == 2 { return 1 }
	var arr: [Int] = []
	for number in 2...n {
		var flag: Bool = true
		// 약수는 대칭으로 이루어져있다.
		// 예를들어 n이 20이면 n의 약수는 1, 2, 4, 5, 10, 20
		// 1 과 20은 제외
		// 2 * 10 = 20, 4 * 5 =. 0
		// 즉 2부터 4까지만 순회하면서 조건은 검사하면 되는 것이다.
		// 즉 20의 제곱근을 정수로 변환하면 4
		// 순회할 때 2..<Int(sqrt(Double(number)) + 1) 또는 2...Int(sqrt(Double(number)))
		// 이런식으로 순회를 하면 되겠다.
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
