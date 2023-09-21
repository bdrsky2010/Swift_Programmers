func solution(_ n:Int, _ m:Int) -> [Int] {
	var result = [Int]()
	for i in 1...n {
		if n % i == 0 && m % i == 0 {
			result.append(i)
		}
	}
	return [result[result.count-1], (n * m) / result[result.count-1]]
}

// 다른 풀이
func solution2(_ n:Int, _ m:Int) -> [Int] {
	var gcd: Int = (1...min(n, m)).filter { n % $0 == 0 && m % $0 == 0 }.max()!
	return [gcd, (n * m) / gcd]
}
solution2(3, 12)
