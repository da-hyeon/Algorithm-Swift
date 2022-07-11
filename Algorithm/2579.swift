//
//  2579.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/28.
//

import Foundation

let n = Int(readLine()!)!
var arr: [Int] = []
var dp = Array(repeating: 0, count: n)

for i in 0..<n {
    arr.append(Int(readLine()!)!)
    if i == 0 {
        dp[i] = arr[i]
    } else if i == 1 {
        dp[i] = arr[i - 1] + arr[i]
    } else if i == 2 {
        dp[i] = max(arr[0], arr[1]) + arr[2]
    } else {
        dp[i] = max(dp[i - 3] + arr[i - 1], dp[i - 2]) + arr[i]
    }
}

print(dp.last!)
