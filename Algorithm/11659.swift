//
//  11659.swift
//  Algorithm
//
//  Created by 황다현 on 2022/07/18.
//

import Foundation

var nm = readLine()!.split(separator: " ").map{ Int($0)! }
var arr = readLine()!.split(separator: " ").map{ Int($0)! }
var dp = Array.init(repeating: 0, count: arr.count)
dp[0] = arr[0]

for i in 1..<arr.count {
    dp[i] = dp[i-1] + arr[i]
}

for _ in 0..<nm[1] {
    var sum = 0
    let input = readLine()!.split(separator: " ").map{ Int($0)! - 1 }
    let distance = input[1] - input[0]
    if distance == 0 {
        sum = arr[input[0]]
    } else {
        sum = dp[input[1]]
        if input[0] - 1 >= 0 {
            sum -= dp[input[0] - 1]
        }
    }
    print(sum)
}

