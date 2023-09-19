import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
	// 누가 누구를 신고했는지 알고있어야 한다
	var reported: [String:Int] = [:] // 신고당한 id와 신고당한 횟수 저장
	var user: [String:[String]] = [:] // 신고한 id와 이 사람이 신고한 id들의 이름을 저장
	for name in Set(report) {
		let userId = name.components(separatedBy: " ")
		reported[userId[1]] = (reported[userId[1]] ?? 0) + 1
		user[userId[0]] = (user[userId[0]] ?? []) + [userId[1]]
	}
	// id_list 배열을 통해 신고한 id로 접근하고
	// 해당 id를 키값으로 user 딕셔너리를 통해 신고당한 id에 접근하여
	// 해당 id의 신고당한 횟수가 K 이상이라면 1을 더해준다.
	return id_list.map {
		(user[$0] ?? []).reduce(0) {
			$0 + ((reported[$1] ?? 0) >= k ? 1 : 0)
		}
	}
}
print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"]	, 2))
print(solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3))
