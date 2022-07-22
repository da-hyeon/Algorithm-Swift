//
//  2559.swift
//  Algorithm
//
//  Created by 황다현 on 2022/07/22.
//

import Foundation

var nm = readLine()!.split(separator: " ").map{ Int($0)! }
var arr = readLine()!.split(separator: " ").map{ Int($0)! }
var dp = Array(repeating: 0, count: arr.count)

for i in 0..<nm[1] {
    dp[nm[1] - 1] += arr[i]
}

for i in nm[1]..<arr.count {
    dp[i] = dp[i - 1] - arr[i-nm[1]] + arr[i]
}

print(dp[(nm[1] - 1)...].max()!)
