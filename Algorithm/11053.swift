//
//  11053.swift
//  Algorithm
//
//  Created by 황다현 on 2022/07/18.
//

import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int($0)!}
var dp = Array(repeating: 1, count: n)

for i in 0..<n {
    var temp: [Int] = []
    for j in stride(from: i, through: 0, by: -1) {
        if arr[j] < arr[i] {
            temp.append(dp[j] + 1)
        }
    }
    dp[i] = temp.max() ?? 1
}
print(dp)
print(dp.max()!)
