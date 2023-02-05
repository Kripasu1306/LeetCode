import UIKit

let letters: [Character: [Character]] = [
    "2": ["a","b","c"],
    "3": ["d","e","f"],
    "4": ["g","h","i"],
    "5": ["j","k","l"],
    "6": ["m","n","o"],
    "7": ["p","q","r", "s"],
    "8": ["t","u","v"],
    "9": ["w","x","y", "z"]
]

/*
 Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

 A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.
 //Nokia mobile key pad sorts.
 
 Example 1:
 Input: digits = "23"
 Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
 
 Example 2:
 Input: digits = ""
 Output: []
 
 Example 3:
 Input: digits = "2"
 Output: ["a","b","c"]
  

 Constraints:
 0 <= digits.length <= 4
 digits[i] is a digit in the range ['2', '9'].

 */
func letterCombinations(_ digits: String) -> [String] {
    var seq: [Character] = []
    var res: [[Character]] = []
    backtrack(Array(digits), 0, &seq, &res)
    return res.filter { !$0.isEmpty }.map { String($0) }
}

func backtrack(_ digits: [Character], _ start: Int, _ seq: inout [Character], _ res: inout [[Character]]) {
    if seq.count == digits.count {
        res.append(seq)
    }

    for i in start..<digits.count {
        let digitLetters = letters[digits[i], default: []]
        for ch in digitLetters {
            seq.append(ch)
            backtrack(digits, i + 1, &seq, &res)
            seq.removeLast()
        }
    }
}

let list = letterCombinations("23")
print("xxxyyyzzz list is : \(list)")
