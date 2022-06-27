//
//  2477.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/28.
//

import Foundation

let n = Int(String(readLine()!))!
var width = 0
var height = 0
var totals: [Int] = []
var tempArea = 1
for _ in 0..<6 {
    let inputNumbers = readLine()!.split(separator: " ").map{Int(String($0))!}
    totals.append(inputNumbers[1])
    if inputNumbers[0] == 1 || inputNumbers[0] == 2 {
        width = max(width, inputNumbers[1])
    } else {
        height = max(height, inputNumbers[1])
    }
}
let totalArea = width * height
let widthIndex = totals.firstIndex(where: {$0 == width}) ?? 0
let heightIndex = totals.firstIndex(where: {$0 == height}) ?? 0
let maxIndex = max(widthIndex, heightIndex)

var count = 0
for i in 0..<6 {
    let index = (maxIndex + i) % 6
    if totals[index] == width || totals[index] == height {
        continue
    }
    count += 1
    if count == 2 || count == 3 {
        tempArea *= totals[index]
    }
}

print((totalArea - tempArea) * n)
