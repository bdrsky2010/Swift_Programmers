import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
	var sum: Int = 0
	for num in 1...number {
		var cnt: Int = 0
		if num == 1 { cnt += 1 }
		else {
			for i in 1..<Int(sqrt(Double(num))) + 1 {
				if num % i == 0 {
					if Int(pow(Double(i), 2)) == num { cnt += 1 }
					else { cnt += 2 }
				}
			}
		}
		sum += cnt <= limit ? cnt : power
		
	}
	return sum
}
