//
//  5086.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/28.
//

import Foundation
let n = Int(readLine()!)!

for _ in 0..<n {
    let inputNumbers = readLine()!.split(separator: " ").map { Int(String($0))! }
    var a = inputNumbers[0]
    var b = inputNumbers[1]
    var divide = 2
    var min = 1

    while true {
        if a < divide || b < divide {
            break
        }
        
        if a % divide != 0 || b % divide != 0 {
            divide += 1
            continue
        }
        
        a /= divide
        b /= divide
        
        min *= divide
    }

    print(min * a * b)
}

