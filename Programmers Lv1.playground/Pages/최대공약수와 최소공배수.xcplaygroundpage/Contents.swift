import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
	var result = [Int]()
	for i in 1...min(n, m) {
		if n % i == 0 && m % i == 0 {
			result.append(i)
		}
	}
	return [result[result.count-1], (n * m) / result[result.count-1]]
}
solution(3, 12)
