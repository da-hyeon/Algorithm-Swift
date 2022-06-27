//
//  1269.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/27.
//

import Foundation

let inputNumbers = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = inputNumbers[0]
let m = inputNumbers[1]
let aSet = Set(readLine()!.split(separator: " ").map{Int(String($0))!})
let bSet = Set(readLine()!.split(separator: " ").map{Int(String($0))!})
print(aSet.subtracting(bSet).count + bSet.subtracting(aSet).count)
