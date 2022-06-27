//
//  1018.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/24.
//

import Foundation

var inputNumber = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = inputNumber[0]
let m = inputNumber[1]
var arr: [[String]] = []
var isWStart = true
var changeCount = 0
var min = Int.max

for _ in 0..<n {
    let line = readLine()!
    var strArray: [String] = []
    for index in line.indices {
        strArray.append(String(line[index]))
    }
    arr.append(strArray)
}

for startI in 0...n-8 {
    for startJ in 0...m-8 {
        for s in 0..<2 {
            isWStart = s == 0 ? true : false
            
            for i in startI..<startI+8 {
                isWStart = !isWStart
                if changeCount > min {
                    break
                }
                var startLetter = isWStart ? "W" : "B"
                for j in startJ..<startJ+8 {
                    startLetter = startLetter == "W" ? "B" : "W"
                    if arr[i][j] == startLetter {
                        changeCount += 1
                        continue
                    }
                }
            }
            
            if min > changeCount {
                min = changeCount
            }
            changeCount = 0
        }
    }
}

print(min)
