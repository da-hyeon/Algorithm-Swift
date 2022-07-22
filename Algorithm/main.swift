//
//  main.swift
//  Algorithm
//
//  Created by 황다현 on 2022/07/22.
//

import Foundation

let nm = readLine()!.split(separator: " ").map{ Int($0)! }
let arr = readLine()!.split(separator: " ").map{ Int($0)! }
let dp = Array(repeating: Array(repeating: 0, count: arr.count), count: arr.count)

for i in 0..<arr.count{
    
}

//1,2,3,4,5
//1+2,2+3,3+4,4+5
//1+2+3,2+3+4,3+4+5
//1+2+3+4,2+3+4+5
//1+2+3+4+5

//3,1+2,1+2,1+2+3,3+1+2

//12,12,123,312,12312,3
