//
//  11054.swift
//  Algorithm
//
//  Created by 황다현 on 2022/07/18.
//

import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int($0)!}
var dp = Array(repeating: 1, count: n)
var arrReverse = arr.reversed().map{Int($0)}
var dpReverse = Array(repeating: 1, count: n)
var dpSum = Array(repeating: 1, count: n)

for i in 0..<n {
    var temp: [Int] = []
    var tempReverse: [Int] = []
    
    for j in stride(from: i, through: 0, by: -1) {
        if arr[j] < arr[i] {
            temp.append(dp[j] + 1)
        }
        
        if arrReverse[j] < arrReverse[i] {
            tempReverse.append(dpReverse[j] + 1)
        }
    }
    dp[i] = temp.max() ?? 1
    dpReverse[i] = tempReverse.max() ?? 1
}
dpReverse.reverse()

for i in 0..<n {
    dpSum[i] = dp[i] + dpReverse[i] - 1
}

print(dpSum.max()!)
