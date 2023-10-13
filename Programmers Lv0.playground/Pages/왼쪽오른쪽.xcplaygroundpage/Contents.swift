import Foundation

func solution(_ str_list:[String]) -> [String] {
	for i in 0..<str_list.count where ["l","r"].contains(str_list[i]) {
		if str_list[i] == "l" { return Array(str_list[...(i-1)]) }
		else { return Array(str_list[(i+1)...]) }
	}
	return []
}
