//
//  10816.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/27.
//

import Foundation
let n = Int(String(readLine()!))!
let myCards = readLine()!.split(separator: " ").map{String($0)}
let m = Int(String(readLine()!))!
let yourCards = readLine()!.split(separator: " ").map{String($0)}
var dic: [String: Int] = [:]
var str = ""

for card in myCards {
    if dic[card] == nil {
        dic[card] = 1
    } else {
        dic[card]! += 1
    }
}

for yourCard in yourCards {
    let value = dic[yourCard] != nil ? dic[yourCard]! : 0
    str += "\(value) "
}

print(str)
