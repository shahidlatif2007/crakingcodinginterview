import Foundation

/*
 * Given two strings a  and b that may or may not be of the same length, determine the minimum number of character deletions required to make a and b anagrams. Any characters can be deleted from either of the strings.
 * Sample Input a: cde b: abc
 * Output: 4
 */

func makeAnagrams(a:String, b:String) -> Int {
    if a.count == 0 && b.count == 0 {
        return 0
    }else if (a.count == 0 && b.count > 0) {
        return b.count
    }else if (a.count > 0 && b.count == 0) {
        return a.count
    }
    let characterSet = "abcdefghijklmnopqrstuvwxyz"
    var numberOfDeletion = 0
    var inputDicA = [Character:Int]()
    var inputDicB = [Character:Int]()
    for ch in characterSet {
        inputDicA[ch] = 0
        inputDicB[ch] = 0
    }
    
    for ch in a {
        inputDicA[ch] = inputDicA[ch]! + 1
    }
    
    for ch in b {
        inputDicB[ch] = inputDicB[ch]! + 1
    }
    
    for ch in characterSet {
        if inputDicA[ch]! != 0 && inputDicB[ch]! != 0 {
            
            numberOfDeletion += abs(inputDicB[ch]! - inputDicA[ch]!)
            
        }else {
            numberOfDeletion += inputDicA[ch]!
            numberOfDeletion += inputDicB[ch]!
        }
    }
    return numberOfDeletion
}
makeAnagrams(a: "cde", b: "abc")


