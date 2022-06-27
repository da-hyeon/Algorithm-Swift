//
//  15658.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/21.
//

import Foundation
let n = Int(String(readLine()!))!
let inputNumbers = readLine()!.split(separator: " ").map {Int(String($0))!}
var inputSymbols = readLine()!.split(separator: " ").map {Int(String($0))!}
var minValue = Int.max
var maxValue = Int.min

recur(value: inputNumbers[0], index: 1)
print(maxValue)
print(minValue)

func recur(value: Int, index: Int) {
    if index == n {
        minValue = min(value, minValue)
        maxValue = max(value, maxValue)
        return
    }
    
    for i in 0..<inputSymbols.count {
        if inputSymbols[i] == 0 {
            continue
        }
        inputSymbols[i] -= 1
        var result = value
        switch i {
        case 0:
            result += inputNumbers[index]
        case 1:
            result -= inputNumbers[index]
        case 2:
            result *= inputNumbers[index]
        case 3:
            result /= inputNumbers[index]
        default:
            break
        }
        
        recur(value: result, index: index + 1)
        inputSymbols[i] += 1
    }
}
