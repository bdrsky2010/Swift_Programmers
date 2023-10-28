import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
		switch n {
				case 1:
						return num_list[...slicer[1]]
				case 2:
						return num_list[slicer[0]...]
				case 3:
						return num_list[slicer[0]...[slicer[1]]
				case 4:
						return stride(from: slicer[0], through: slicer[1], by: slicer[2])
										.map { num_list[$0] }
				default:
						return []
		}
}
