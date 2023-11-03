import Foundation

func fibo(_ n: Int) -> Int {
		var dp: [Int] = [0, 1, 1]
		if n > 2 {
				(3...n).forEach { dp.append(dp[$0 - 2] % 1234567 + dp[$0 - 1] % 1234567) }
		}
		return dp[n] % 1234567
}

func solution(_ n:Int) -> Int {
		fibo(n)
}
