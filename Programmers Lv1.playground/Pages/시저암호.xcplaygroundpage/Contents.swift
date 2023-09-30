import UIKit

func solution(_ s:String, _ n:Int) -> String {
	return s.utf8.map {
		print($0)
		var ascii = Int($0)
		switch ascii {
		case 65...90:
			ascii = (ascii + n - 65) % 26 + 65
		case 97...122:
			ascii = (ascii + n - 97) % 26 + 97
		default:
			break
		}
		return String(UnicodeScalar(ascii)!)
	}.joined()
}
print(solution("a B z", 4))
