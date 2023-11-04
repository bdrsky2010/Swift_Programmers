import Foundation

func solution(_ s:String) -> String {
	let arr: [String] = s.components(separatedBy: " ")
	return String(arr.reduce(into: Int.max) {
		$0 = $0 > Int($1)! ? Int($1)! : $0
	}) + " " + String(arr.reduce(into: Int.min) {
		$0 = $0 < Int($1)! ? Int($1)! : $0
	})
}
