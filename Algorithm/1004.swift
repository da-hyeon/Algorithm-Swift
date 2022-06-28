//
//  1004.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/28.
//


//출발지점과 행성 중심까지의 거리가 행성 반지름보다 작은 경우 = 원 안에 있음.
//출발지점과 행성 중심까지의 거리가 행성 반지름보다 큰 경우 = 원 밖에 있음.
//도착지점과 행성 중심까지의 거리가 행성 반지름보다 작은 경우 = 원 안에 있음.
//도착지점과 행성 중심까지의 거리가 행성 반지름보다 큰 경우 = 원 밖에 있음.
import Foundation

let n = Int(String(readLine()!))!

for _ in 0..<n {
    var count = 0
    let arr = readLine()!.split(separator: " ").map { Double(String($0))! }
    
    let x1 = arr[0]
    let y1 = arr[1]
    let x2 = arr[2]
    let y2 = arr[3]
    
    let m = Int(String(readLine()!))!
    
    for _ in 0..<m {
        let pArr = readLine()!.split(separator: " ").map { Double(String($0))! }
        let pX = pArr[0]
        let pY = pArr[1]
        let pR = pArr[2]
        
        let startDistance = sqrt(pow(x1 - pX, 2) + pow(y1 - pY, 2))
        let endDistance = sqrt(pow(x2 - pX, 2) + pow(y2 - pY, 2))
        if (startDistance > pR && endDistance <= pR) || (endDistance > pR && startDistance <= pR) {
            count += 1
        }
    }
    print(count)
}
//1
//-5 1 12 1
//7
//1 1 8
//-3 -1 1
//2 2 2
//5 5 1
//-4 5 1
//12 1 1
//12 1 2
