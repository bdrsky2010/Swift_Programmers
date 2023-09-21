import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
	var numer: Int = (denom1 * numer2) + (denom2 * numer1) // 분자
	var denom: Int = denom1 * denom2 // 분모
	var gcd: Int = (1...min(denom, numer)).filter { denom % $0 == 0 && numer % $0 == 0 }.max()!
	return [numer / gcd, denom / gcd]
}
print(solution(1, 2, 3, 4))
