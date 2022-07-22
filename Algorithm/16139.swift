//
//  16139.swift
//  Algorithm
//
//  Created by 황다현 on 2022/07/22.
//

import Foundation

var textArr = Array(readLine()!.map(String.init))
var dp = Array(repeating: Array(repeating: 0, count: textArr.count), count: 26)

for i in 0..<textArr.count {
    let a = Int(textArr[i].unicodeScalars.first?.value ?? 0)
    dp[a - 97][i] = 1
}

var n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let letter = input[0]
    let start = Int(input[1])!
    let end = Int(input[2])!
    
    let letterIndex = Int(letter.unicodeScalars.first?.value ?? 0) - 97
    print(dp[letterIndex][start...end].filter{$0 == 1}.count)
}
