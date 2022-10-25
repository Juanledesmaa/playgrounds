import Foundation

class MyArray {
    
    var numbersArray: [Int]
    var mediansArray: [Double]

    init() {
        self.numbersArray = []
        self.mediansArray = []
    }
    
    func updateNumbersArray(with value: Int) {
        numbersArray.append(value)
    }

    func updateMediansArray(with value: Double) {
        mediansArray.append(value)
    }
}

let currentArray = MyArray()

func runningMedian(a: [Int]) -> Double? {
    // Write your code here
    
    guard a.count > 1 else { return  nil }
    
    var workingArray = currentArray.numbersArray
    workingArray.append(contentsOf: a)

    if workingArray.count % 2 == 0 {
        let halfCount = workingArray.count/2
        let firstHalf = workingArray.prefix(halfCount)
        let lastHalf = workingArray.suffix(halfCount)
        
        if let firstElement = firstHalf.last, let lastElement = lastHalf.first {
            let sum = (firstElement + lastElement)/2
            return Double(sum)
        } else {
            return nil
        }
    } else {
        if workingArray.count != 0 {
            let middleIndex = (workingArray.count  > 1 ? workingArray.count  - 1 : workingArray.count ) / 2
            return Double(workingArray[middleIndex])
        } else {
            return nil
        }
    }
}

//print(runningMedian(a: [10]))
//print(runningMedian(a: [10,1]))
//print(runningMedian(a: [10,1,2]))
//print(runningMedian(a: [10,1,2,3]))
//print(runningMedian(a: [10,1,2,3,4]))
//print(runningMedian(a: [10,1,2,3,4,5]))
//print(runningMedian(a: [10,1,2,3,4,5,6]))
//print(runningMedian(a: [10,1,2,3,4,5,6,7]))
//print(runningMedian(a: [10,1,2,3,4,5,6,7,8]))
//print(runningMedian(a: [10,1,2,3,4,5,6,7,8,9]))
//print(runningMedian(a: [10,1,2,3,4,5,6,7,8,9,10]))



func findMedian(arr: [Int]) -> Int {
    // Write your code here
    let a = arr.sorted { $0 < $1 }
    
    if a.count % 2 == 0 {
        let halfCount = a.count/2
        let firstHalf = a.prefix(halfCount)
        let lastHalf = a.suffix(halfCount)
        
        if let firstElement = firstHalf.last, let lastElement = lastHalf.first {
            let sum = (firstElement + lastElement)/2
            return sum
        } else {
            return 0
        }
    } else {
        if a.count != 0 {
            let middleIndex = (a.count  > 1 ? a.count  - 1 : a.count ) / 2
            print("el middle index es: \(middleIndex)")
            return a[middleIndex]
        } else {
            return 0
        }
    }
}

print(findMedian(arr: [10,11,2,3,4,55,6,7]))//sum 55
