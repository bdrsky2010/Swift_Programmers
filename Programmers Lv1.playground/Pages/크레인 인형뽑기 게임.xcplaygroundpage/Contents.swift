import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
	var board = board
	var bucket = [Int]()
	var answer: Int = 0

	for move in moves {
		for i in 0..<board.count {
			// 보드에 값이 0이 아닐 때
			if board[i][move - 1] != 0 {
				// 바구니에 있는 마지막 값과 보드에서 뽑을 값이 같을 땐
				// 둘 다 제거 후 카운트에 + 2
				if bucket.last != nil && board[i][move - 1] == bucket.last! {
					bucket.popLast()
					board[i][move - 1] = 0
					answer += 2
				} else {
					// 바구니에 보드에서 뽑은 값을 저장
					// 보드에서 뽑은 위치에는 0 값을 넣어준다
					bucket.append(board[i][move - 1])
					board[i][move - 1] = 0
				}
				break
			}
		}
	}
	return answer
}
solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]	)
