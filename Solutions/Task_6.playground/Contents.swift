/*
You're given strings jewels representing the types of stones that are jewels,
and stones representing the stones you have. Each character in stones is a type
of stone you have. You want to know how many of the stones you have are also jewels.

Letters are case sensitive, so "a" is considered a different type of stone from "A".
*/

let jewels = "aA"
let stones = "aAAbbbb"

let jewels2 = "z"
let stones2 = "ZZ"

func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    
    var total = 0
    
    for jewel in jewels {
        let countJewels = stones.filter { $0 == jewel }.count
        total += countJewels
    }
    
    return total
}

numJewelsInStones(jewels, stones)
// Input: jewels = "aA", stones = "aAAbbbb"
// Output: 3

numJewelsInStones(jewels2, stones2)
// Input: jewels = "z", stones = "ZZ"
// Output: 0
