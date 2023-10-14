import Foundation

// 원래 코드
/*
 리뷰를 해보자면
 일단 사용하는 변수 자체가 많다보니 메모리를 많이 잡아 먹는다는 생각이 있었고
 실행 후 처음 변수 s에 전달인자로 들어온 매개변수 s의 값을 대입하는 과정에서의 연산 시간과
 while문 안에서 상수 c에 s의 첫번째 문자를 담아주는 과정
 str이라는 변수에 상수 c를 계속 대입하고 비워주는 과정 등
 종합적으로 봤을 때 시간을 너무 많이 사용한다
 */
func solution(_ s:String) -> Int {
	var s: String = s
	var x: Character = s.first!
	var (yesX, notX, result): (Int, Int, Int) = (0, 0, 0)
	var str: String = ""
	while !s.isEmpty {
		let c: Character = s.removeFirst()
		if c == x { yesX += 1 }
		else { notX += 1 }
		str.append(String(c))
		if yesX == notX {
			result += 1
			str = ""
			x = s.first ?? Character(" ")
			(yesX, notX) = (0, 0)
			
		}
	}
	if !str.isEmpty { result += 1 }
	return result
}

// 코드 리팩토링
/*
 일단 첫 번째 문제였던 변수의 사용을 줄이기 위해 노력했고
 변수에 값 삽입, 초기화 등의 과정을 줄이면서 시간이 크게 향상되었다.
 프로그래머스 채점 중 최대 시간이 걸렸던 테스트 41, 42에서도
 원래 코드에서는 579 ms, 578 ms
 리팩토링한 코드에서는 0.63, 0.64로 크게 향상된 것을 확인할 수 있었다
 */
func solution(_ s:String) -> Int {
	var x: Character = " "
	var yesX: Int = 0
	var result: Int = 0
	for c in s {
		if x == " " {
			x = c
			yesX = 1
			result += 1
			continue
		}
		yesX += x == c ? 1 : -1
		if yesX == 0 { x = " " }
	}
	return result
}
