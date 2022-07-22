//
//  main.swift
//  Algorithm
//
//  Created by 황다현 on 2022/07/18.
//

import Foundation

var a = Array(readLine()!)
var b = Array(readLine()!)
let filter = a.filter{b.contains($0)}
let filter2 = b.filter{a.contains($0)}
var count = 0

var bigArr = filter.count >= filter2.count ? filter : filter2
let smallArr = filter.count >= filter2.count ? filter2 : filter

print(smallArr)
print(bigArr)

var foundIndex = 0

for i in 0..<smallArr.count {
    for j in 0..<bigArr.count {
        print("\(smallArr[i]) > \(bigArr[j]) = \(smallArr[i] > bigArr[j])")
        if smallArr[i] > bigArr[j] {
            if foundIndex <= j {
                count += 1
            }
            foundIndex = j
            bigArr.remove(at: j)
            break
        }
    }
}

print(count)
