//
//  11653.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/27.
//

import Foundation

var n = Int(String(readLine()!))!
var count = 2
while n > 1 {
    if n % count == 0 {
        n /= count
        print(count)
        continue
    }
    count += 1
}
