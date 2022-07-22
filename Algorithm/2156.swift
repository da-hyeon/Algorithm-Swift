//
//  2156.swift
//  Algorithm
//
//  Created by 황다현 on 2022/07/13.
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
        dp[i] = max(max(arr[i-1] + arr[i], dp[i-1]), arr[i-2] + arr[i])
    } else {
        dp[i] = max(max(dp[i-2], dp[i-3] + arr[i-1]) + arr[i], dp[i-1])
    }
}
print(dp.max() ?? 0)
