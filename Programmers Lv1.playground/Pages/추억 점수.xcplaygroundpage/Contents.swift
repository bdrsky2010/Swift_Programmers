import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
	return photo.map {
		$0.reduce(0, { result, namee in
			var flag: Bool = true
			for i in 0..<yearning.count {
				if name[i] == namee {
					return result + yearning[i]
				} else {
					flag = false
				}
			}
			if !flag { return result }
			return 0
		})
	}
}

// 다른 사람 풀이
func solution2(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
	let score: [String: Int] = Dictionary(uniqueKeysWithValues: zip(name, yearning))
	return photo.map { $0.reduce(0) { $0 + (score[$1] ?? 0) } }
}

solution2(["may", "kein", "kain", "radi"], [5, 10, 1, 3], [["may", "kein", "kain", "radi"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]])
