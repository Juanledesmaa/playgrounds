import Foundation


/// We go for a NSCountedSet and then we filter using the count of the elements to filter the unique element
func lonelyinteger(a: [Int]) -> Int {
    // Write your code here

    let counted = NSCountedSet(array: a)
    let lonely = (counted.filter { counted.count(for: $0) == 1}.first as? Int) ?? 0
    return lonely
}


let exampleArray = [1,2,3,4,3,2,1]

lonelyinteger(a: exampleArray)
