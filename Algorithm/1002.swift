//
//  1002.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/28.
//

import Foundation

let n = Int(String(readLine()!))!

for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map { Double(String($0))! }
    
    let x1 = arr[0]
    let y1 = arr[1]
    let r1 = arr[2]
    let x2 = arr[3]
    let y2 = arr[4]
    let r2 = arr[5]
    
    let d = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2))
    
    if x1 == x2 && y1 == y2 && r1 == r2 {
        print(-1)
    } else if d == r1 + r2 || d == abs(r1 - r2) {
        print(1)
    } else if d < r1 + r2 && d > abs(r1 - r2) {
        print(2)
    } else {
        print(0)
    }
}
