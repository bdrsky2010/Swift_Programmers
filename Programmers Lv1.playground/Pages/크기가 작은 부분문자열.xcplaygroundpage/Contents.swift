import Foundation

import Foundation

func solution(_ t:String, _ p:String) -> Int {
	var t: String = t
	var cnt: Int = 0
	for i in 0...(t.count - p.count) {
		if Int(t.prefix(p.count))! <= Int(p)! { cnt += 1 }
		t.removeFirst()
	}
	return cnt
}
solution("3141592", "271")
