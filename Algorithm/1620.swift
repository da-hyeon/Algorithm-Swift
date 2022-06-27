//
//  1620.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/27.
//

import Foundation

let inputNumbers = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = inputNumbers[0]
let m = inputNumbers[1]
var stringKeyDic: [String: Int] = [:]
var numberKeyDic: [Int: String] = [:]
var sameCount = 0

for i in 0..<n {
    let text = String(readLine()!)
    stringKeyDic[text] = i + 1
    numberKeyDic[i+1] = text
}

for _ in 0..<m {
    let text = String(readLine()!)
    if text == text.uppercased() {
        print(numberKeyDic[Int(text)!]!)
    } else {
        print(stringKeyDic[text]!)
    }
}
