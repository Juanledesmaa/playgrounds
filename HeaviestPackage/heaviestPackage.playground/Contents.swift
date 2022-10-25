import Foundation

func getHeaviestPackage(packageWeights: [Int]) -> Int {
    // Write your code here

    var auxArray = packageWeights.sorted(by: { $0 < $1 })

    while auxArray.count > 1 {
        var weightToRemove = 0
        if let weight = auxArray.min(), let index = auxArray.firstIndex(of: weight) {
            if auxArray.indices.contains(index + 1) {
                let mergePackages = auxArray[index] + auxArray[index + 1]
                weightToRemove = auxArray[index + 1]
                auxArray[index] = mergePackages
            } else {
                break
            }

            auxArray = auxArray.filter { $0 != weightToRemove}
        }
    }

    return auxArray.max() ?? 0
}


getHeaviestPackage(packageWeights: [4,30,15,5,9])
