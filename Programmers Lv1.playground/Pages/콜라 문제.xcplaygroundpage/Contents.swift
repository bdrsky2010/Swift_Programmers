import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
	var bottle: Int = n
	var result: Int = 0
	while bottle >= a { // 갖고있는 콜라병의 수가 마트에 가져다줄 수 있는 병의 수보다 클 때까지
		result += (bottle / a) * b // a개의 병을 주고 b만큼 받을 수 있는 병의 수 계산
		bottle = (bottle / a) * b + (bottle % a) // 마트에 빈 병을 주고 받은 병 + 마트에 주지못하고 남은 병의 수
	}
	return result
}
solution(2, 1, 20)
solution(3, 1, 20)
