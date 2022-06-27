//
//  11478.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/27.
//

import Foundation

let s = Array(String(readLine()!)).map({String($0)})
var resultSet: Set<String> = []

var str = ""
for i in 0..<s.count {
    for j in i..<s.count {
        str += s[j]
        resultSet.insert(str)
    }
    str = ""
}

print(resultSet.count)
