//
//  1358.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/28.
//

// 1.
// x,y와 선수의 거리를 구한다.
// 해당 선수가 x+width, y+height 내에 있으면 +1 없으면 아래로 이동
//
// 2.
// x,y+radus와 선수의 거리를 구한다.
// 해당 선수와의 거리가 height/2 이내에 있으면+1 없으면 아래로 이동
//
// 3.
// x+width, y+radius와 선수의 거리를 구한다.
// 해당 선수와의 거리가 height/2 이내에 있으면+1 없으면 탈출

import Foundation

let inputNumbers = readLine()!.split(separator: " ").map { Double(String($0))! }
let width = inputNumbers[0]
let height = inputNumbers[1]
let x = inputNumbers[2]
let y = inputNumbers[3]
let playerCount = inputNumbers[4]
let radius = height / 2
var count = 0

for _ in 0..<Int(playerCount) {
    let player = readLine()!.split(separator: " ").map { Double(String($0))! }
    let pX = player[0]
    let pY = player[1]
    
    let leftDistance = sqrt(pow(x - pX, 2) + pow(y + radius - pY, 2))
    let rightDistance = sqrt(pow(x + width - pX, 2) + pow(y + radius - pY, 2))
    
    if x <= pX && pX <= x + width && y <= pY && pY <= y + height {
        count += 1
    } else if leftDistance <= radius || rightDistance <= radius {
        count += 1
    }
}
print(count)
