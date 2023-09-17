import Foundation

/*
 순위	    당첨 내용
 1	    6개 번호가 모두 일치
 2	    5개 번호가 일치
 3	    4개 번호가 일치
 4	    3개 번호가 일치
 5	    2개 번호가 일치
 6(낙첨)	그 외
 */
func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
	var rank: [Int:Int] = [0:6, 1:6, 2:5, 3:4, 4:3, 5:2, 6:1]
	var correct = lottos.filter { win_nums.contains($0) }.count
	var maxCorrect = lottos.filter { $0 == 0 }.count + correct
	return [rank[maxCorrect]!, rank[correct]!]
}
solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19])
solution([0, 0, 0, 0, 0, 0]	, [38, 19, 20, 40, 15, 25])
solution([45, 4, 35, 20, 3, 9]	, [20, 9, 3, 45, 4, 35])
