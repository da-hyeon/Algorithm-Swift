//
//  14425.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/27.
//
let inputNumbers = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = inputNumbers[0]
let m = inputNumbers[1]
var baseDic: [String: Int] = [:]
var sameCount = 0

for _ in 0..<n {
    let text = String(readLine()!)
    baseDic[text] = 0
}

for _ in 0..<m {
    let text = String(readLine()!)
    if baseDic[text] != nil {
        sameCount += 1
    }
}

print(sameCount)
