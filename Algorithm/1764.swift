//
//  1764.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/27.
//

import Foundation

let inputNumbers = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = inputNumbers[0]
let m = inputNumbers[1]
var noListens: [String: Int] = [:]
var result: [String] = []

for _ in 0..<n {
    noListens[String(readLine()!)] = 0
}

for _ in 0..<m {
    let noSee = String(readLine()!)
    if noListens[noSee] != nil {
        result.append(noSee)
    }
}
print(result.count)
print(result.sorted().joined(separator: "\n"))
