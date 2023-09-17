import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
	var total: Int = 0
	for n in 1...count { total += (price * n) }
	return total - money > 0 ? Int64(total - money) : 0
}
solution(3, 20, 4)
solution(1000, 10000, 2)
