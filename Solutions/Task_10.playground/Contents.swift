import Foundation

/*
Given a string s and an integer array indices of the same length.

The string s will be shuffled such that the character at the i^th position
moves to indices[i] in the shuffled string.

Return the shuffled string.
 
Constraints:
- s.length == indices.length == n
- 1 <= n <= 100
- s contains only lower-case English letters.
- 0 <= indices[i] < n
- All values of indices are unique (i.e. indices is a permutation of
  the integers from 0 to n - 1).
*/

let s = "codeleet"
let indices = [4,5,6,7,0,2,1,3]

let s2 = "abc"
let indices2 = [0,1,2]


func restoreString(_ s: String, _ indices: [Int]) -> String {
    
    var result = Array(s)
    
    for (index, value) in indices.enumerated() {
        result[value] = Array(s)[index]
    }
    
    return String(result)
}

restoreString(s, indices)
// Input: s = "codeleet", indices = [4,5,6,7,0,2,1,3]
// Output: "leetcode"

restoreString(s2, indices2)
// Input: s = "abc", indices = [0,1,2]
// Output: "abc"

