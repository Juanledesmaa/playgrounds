import Foundation

/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    
    var auxArray = arr
    var maxNumberArray: [Int] = []
    var miniNumberArray: [Int] = []
    
    if arr.dropFirst().allSatisfy({ $0 == arr.first }) {
        let arraySlice = arr[0..<4]
        let sum = arraySlice.reduce(0, +)
        print("\(sum)" + " " + "\(sum)")
        
    } else {
        while maxNumberArray.count != 4 {
            guard let maxItem = auxArray.max() else { return }
            auxArray = auxArray.filter { $0 != maxItem }
            maxNumberArray.append(maxItem)
        }
        
        auxArray = arr
        
        while miniNumberArray.count != 4 {
            guard let miniItem = auxArray.min() else { return }
            auxArray = auxArray.filter { $0 != miniItem }
            miniNumberArray.append(miniItem)
        }
        
        let totalMin = miniNumberArray.reduce(0, +)
        let totalMax = maxNumberArray.reduce(0, +)
        
        print("\(totalMin)" + " " + "\(totalMax)")
    }
}

miniMaxSum(arr: [5,5,5,5,5])
