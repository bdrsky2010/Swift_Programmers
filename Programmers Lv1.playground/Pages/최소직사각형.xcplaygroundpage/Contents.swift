import Foundation

func solution(_ sizes:[[Int]]) -> Int {
	var (maxW, maxH) = (0, 0)
	for size in sizes {
		maxW = max(maxW, size.max()!)
		maxH = max(maxH, size.min()!)
	}
	return maxW * maxH
}
solution([[60, 50], [30, 70], [60, 30], [80, 40]])
solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]])
solution([[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]])
