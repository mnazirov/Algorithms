/*
Given a non-negative integer num, return the number of steps to reduce it to zero.
If the current number is even, you have to divide it by 2, otherwise, you have
to subtract 1 from it.
 
Constraints:
0 <= num <= 10^6
*/

let num = 14
let num2 = 8
let num3 = 123

func numberOfSteps(_ num: Int) -> Int {
    
    guard 0 <= num && num <= 1000000 else { return 0 }
    
    var steps = 0
    var changingNumber = num
    
    while changingNumber > 0 {
        changingNumber = changingNumber % 2 == 0
            ? changingNumber / 2
            : changingNumber - 1
        steps += 1
    }
    
    return steps
}

numberOfSteps(num)
// Input: num = 14
// Output: 6

numberOfSteps(num2)
// Input: num = 8
// Output: 4

numberOfSteps(num3)
// Input: num = 123
// Output: 12
