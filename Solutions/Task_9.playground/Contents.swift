/*
Given an integer number n, return the difference between the product of its
digits and the sum of its digits.
 
Constraints:
1 <= n <= 10^5
*/

let num = 234
let num2 = 4421

func subtractProductAndSum(_ n: Int) -> Int {
    if 1 <= n && n <= 10^5 { return 0 }
    let nums = String(n).compactMap { Int(String($0)) }
    let sumOfDigits = nums.reduce(0, +)
    let producOfDigits = nums.reduce(1, *)
    return producOfDigits - sumOfDigits
}

subtractProductAndSum(num)
// Input: num = 234
// Output: 15

subtractProductAndSum(num2)
// Input: num = 4421
//Output: 21
