import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

//public func solution(_ A : inout [Int]) -> Int {
//    // write your code in Swift 4.2.1 (Linux)
//
//    var x = 1
//
//    A.filter { $0 > 0 }.sorted { $0 < $1 }.map { number in
//        if !(x < number) {
//            x = number + 1
//        }
//    }
//
//    return x
//}
//
//var numbers = [1, 3, 6, 4, 1, 2]
//solution(&numbers)

//public func solution(_ X : Int, _ B : inout [Int], _ Z : Int) -> Int {
//    // write your code in Swift 4.2.1 (Linux)
//    let d: Double = Double(X - B.reduce(0, + ))//remaining
//
//    if (d == Double(X)) {
//        return 0
//    } else if !(d > 0) {
//        return -1
//    }
//
//    var t: [Int] = []
//
//    if B.count >= Z {
//        print(B.suffix(Z))
//        t = Array(B.suffix(Z))
//    } else {
//        t = B
//    }
//
//    let r: Double = Double((t.reduce(0, +))/Z)
//
//    let result = d/r
//
//    return Int(result.rounded())
//}
//
//var numbers = [10, 6, 6, 8]
//solution(100, &numbers, 3)


//public func solution(_ X : Int) -> String {
//    // write your code in Swift 4.2.1 (Linux)
//
//    let formatter = DateComponentsFormatter()
//    formatter.allowedUnits = [.weekOfMonth, .day, .hour, .minute, .second]
//    formatter.unitsStyle = .abbreviated
//    formatter.maximumUnitCount = 2
//    let result = (formatter.string(from: TimeInterval(X)) ?? "0s").replacingOccurrences(of: " ", with: "")
//    return result
//}
//
//solution(5)


public func solution(_ X : Int) -> String {
    // write your code in Swift 4.2.1 (Linux)
    
    let w: Int = X / 604800
    let d: Int = X / 86400
    let h: Int = X / 3600
    let m: Int = (X/60) % 60
    let s: Int = X % 60
    
    let intArray = Array([w, d, h, m, s].filter{ $0 > 0})
  
    var a = ""
    
    switch intArray.count {
    case 1:
        a = String(format: "%us", s)
    case 2:
        a = String(format: "%um%us", m, s)
    case 3:
        if (m + 1) <= 60 && s > 0 {
            a = String(format: "%uh%um", h, (m + 1))
        } else if s > 0 {
            a = String(format: "%uh%um", (h + 1), 0)
        } else {
            a = String(format: "%uh%um", h, m)
        }
    case 4:
        if (h + 1) <= 24 && m > 0 {
            a = String(format: "%ud%uh", d, (h + 1))
        } else if m > 0 {
            a = String(format: "%ud%uh", (d + 1), 0)
        } else {
            a = String(format: "%ud%uh", d, h)
        }
    case 5:
        if (d + 1) <= 7 && h > 0 {
            a = String(format: "%uw%ud", w, (d + 1))
        } else if  h > 0 {
            a = String(format: "%uw%ud", (w + 1), 0)
        } else {
            a = String(format: "%uw%ud", w, d)
        }
    default:
        return "0s"
    }

    return a
}

solution(5000)
