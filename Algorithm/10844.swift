//
//  10844.swift
//  Algorithm
//
//  Created by 황다현 on 2022/07/12.
//

import Foundation

let n = Int(readLine()!)!
var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 10), count: n)
var sum = 0

for i in 1...9 {
    sum += recur(0, i)
}

func recur(_ depth: Int, _ num: Int) -> Int {
    if depth == n-1 {
        return 1
    } else if arr[depth][num] != 0 {
        return arr[depth][num]
    }
    
    if num + 1 < 10 {
        arr[depth][num] += recur(depth + 1 , num + 1) % 1000000000
    }
    if num - 1 >= 0 {
        arr[depth][num] += recur(depth + 1 , num - 1) % 1000000000
    }
    return arr[depth][num]
}

print(sum % 1000000000)
