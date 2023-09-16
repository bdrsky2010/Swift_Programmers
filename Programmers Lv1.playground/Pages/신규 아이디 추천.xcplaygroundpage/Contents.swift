import Foundation

/*
 아이디의 길이는 3자 이상 15자 이하여야 합니다.
 아이디는 알파벳 소문자, 숫자, 빼기(-), 밑줄(_), 마침표(.) 문자만 사용할 수 있습니다.
 단, 마침표(.)는 처음과 끝에 사용할 수 없으며 또한 연속으로 사용할 수 없습니다.
 */
func solution(_ new_id:String) -> String {
	var new_id = new_id.lowercased().split(whereSeparator: {
		!$0.isLowercase && !$0.isNumber && $0 != "-" && $0 != "_" && $0 != "."
	}).map {$0}.joined()
	while new_id.contains("..") { new_id = new_id.replacingOccurrences(of: "..", with: ".") }
	if new_id.hasPrefix(".") { new_id.removeFirst() }
	if new_id.hasSuffix(".") { new_id.removeLast() }
	if new_id.isEmpty { new_id = "a" }
	if new_id.count > 15 { new_id = String(new_id.prefix(15)) }
	if new_id.hasSuffix(".") { new_id.removeLast() }
	while new_id.count <= 2 { new_id += String(new_id.last!) }
	return new_id
}
solution("...!@BaT#*..y.abcdefghijklm")
solution("=.=")
solution("z-+.^.")
