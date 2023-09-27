import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
	return Int(String(a) + String(b))! >= Int(String(b) + String(a))! ? Int(String(a) + String(b))! : Int(String(b) + String(a))!
}
