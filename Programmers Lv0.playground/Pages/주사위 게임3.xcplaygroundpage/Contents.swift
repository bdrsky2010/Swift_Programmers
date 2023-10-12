import Foundation

// 어떻게 풀어야 효율 적으로 풀 수 있을 지 생각도 못하고 구현하는데만
// 생각이 잘 나지 않아 오래걸려버렸다,,
func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
	var dic: [Int:Int] = [:]
	let abcd: [Int] = [a,b,c,d]
	abcd.forEach { dic[$0] = (dic[$0] ?? 0) + 1 }
	let arr = dic.sorted(by: { $0.value > $1.value }).map { $0 }
	print(arr)
	if arr.count == 1 { return 1111 * arr.first!.key }
	else if arr.count == 2 {
		let (p, q): (Int, Int) = (arr[0].key, arr[1].key)
		if arr.first!.value == 3 {
			return (10 * p + q) * (10 * p + q)
		} else if arr.first!.value == 2 {
			return (p + q) * abs(p - q)
		}
	} else if arr.count == 3 {
		let (q, r): (Int, Int) = (arr[1].key, arr[2].key)
		return q * r
	} else if arr.count == 4 {
		return arr.sorted(by: { $0.key < $1.key })[0].key
	}
	return 0
}
