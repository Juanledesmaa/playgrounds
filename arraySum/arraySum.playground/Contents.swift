

func arraySum(numbers: [Int]) -> Int {
    // Write your code here
    
    var totalSum = 0
    
    for number in numbers {
        totalSum += number
    }
    
    return totalSum
}



let testArray = [5, 10, 9, 11, 18, 7, 6]

arraySum(numbers: testArray)



func fizzBuzz(n: Int) -> Void {
    // Write your code here
    
    guard n > 0 else { return }

    for i in 1...n {
        if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
            print("FizzBuzz.")
        } else if i.isMultiple(of: 3) {
            print("Fizz.")
        } else if i.isMultiple(of: 5) {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

fizzBuzz(n: 15)

