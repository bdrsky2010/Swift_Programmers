import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
		var result: [Int] = arr
		query.indices.forEach {
				result = $0 % 2 == 0 ? Array(result[...query[$0]]) : Array(result[query[$0]...])
		}
		return result
}
