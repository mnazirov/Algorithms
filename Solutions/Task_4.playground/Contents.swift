/*
You are given an m x n integer grid accounts where accounts[i][j] is
the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank.
Return the wealth that the richest customer has.

A customer's wealth is the amount of money they have in all their bank accounts.
The richest customer is the customer that has the maximum wealth.
*/

let accounts = [[1,2,3],[3,2,1]]
let accounts2 = [[1,5],[7,3],[3,5]]
let accounts3 = [[2,8,7],[7,1,3],[1,9,5]]


func maximumWealth(_ accounts: [[Int]]) -> Int {
    let sumAccounts = accounts.map { value in value.reduce(0, +)}
    guard let maxValue = sumAccounts.max() else { return 0 }
    return maxValue
}

maximumWealth(accounts)
// Input: accounts = [[1,2,3],[3,2,1]]
// Output: 6

maximumWealth(accounts2)
// Input: accounts = [[1,5],[7,3],[3,5]]
// Output: 10

maximumWealth(accounts3)
// Input: accounts = [[2,8,7],[7,1,3],[1,9,5]]
// Output: 17
