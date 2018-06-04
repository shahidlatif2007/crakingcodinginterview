import Foundation

/*
 * A left rotation operation on an array shifts each of the array's elements 1 unit to the left.
 * Sample Input: [1,2,3,4,5], d = 2
 * Output: [3, 4, 5, 1, 2]
 */


func rotateLeft(a:[Int], d:Int) -> [Int] {
    var outputArray = a
    let uptilRotation = d %  outputArray.count
    if a.count == 0 || a.count == d || a.count == 1 || uptilRotation == 0 {
        return a
    }
    
    for _ in 1...uptilRotation {
        let temp = outputArray[0]
        let arraySize = a.count
        for j in 0..<(arraySize - 1) {
            outputArray[j] = outputArray[j+1]
        }
        outputArray[arraySize - 1] = temp
    }
    return outputArray
}

rotateLeft(a: [1,2,3,4,5], d: 2)
