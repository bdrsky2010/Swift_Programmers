import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
	var arr = arr1
	for i in 0..<arr1.count {
		for j in 0..<arr1[i].count {
			arr[i][j] += arr2[i][j]
		}
	}
	return arr
}
solution([[1,2],[2,3]], [[3,4],[5,6]])

// 다른사람 풀이
//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//		return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
//}
