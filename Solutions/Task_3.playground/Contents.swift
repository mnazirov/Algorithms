/*
 Given the array candies and the integer extraCandies, where candies[i]
 represents the number of candies that the ith kid has.

 For each kid check if there is a way to distribute extraCandies among the kids
 such that he or she can have the greatest number of candies among them. Notice
 that multiple kids can have the greatest number of candies.
*/

let candies = [2,3,5,1,3]
let extraCandies = 3

let candies2 = [4,2,1,1,2]
let extraCandies2 = 1

let candies3 = [12,1,12]
let extraCandies3 = 10

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var result: [Bool] = []
    guard let maxValue = candies.max() else { return [] }
    
    for candy in candies {
        if (candy + extraCandies) >= maxValue {
            result.append(true)
        } else {
            result.append(false)
        }
    }
    
    return result
}

kidsWithCandies(candies, extraCandies)
//Input: candies = [2,3,5,1,3], extraCandies = 3
//Output: [true,true,true,false,true]

kidsWithCandies(candies2, extraCandies2)
//Input: candies = [4,2,1,1,2], extraCandies = 1
//Output: [true,false,false,false,false]

kidsWithCandies(candies3, extraCandies3)
// Input: candies = [12,1,12], extraCandies = 10
// Output: [true,false,true]

