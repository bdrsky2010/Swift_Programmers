import Foundation

func solution(_ n:Int) -> Int {
	if n % 2 != 0 { return (1...n).filter { $0 % 2 != 0 }.reduce(0, +) }
	return (1...n).filter { $0 % 2 == 0 }.reduce(0, { $0 + Int(pow(Double($1), 2)) })
}
