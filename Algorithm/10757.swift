//
//  10757.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/24.
//

//배열로 만든다.
//차이만큼 앞에 0을 붙인다.
//끝에서부터 더하고 올림되는 수를 이전 인덱스에 +1 해준다.
var n = readLine()!.split(separator: " ").map{String($0)}
var a = Array(n[0].map{Int(String($0))!})
var b = Array(n[1].map{Int(String($0))!})
var result: [Int] = []

//0보다 크면 a가 많으므로 b에 추가해줘야 함.
//0보다 작으면 b가 많으므로 a에 추가해줘야 함
let diff = a.count - b.count

if diff > 0 {
    for _ in 0..<diff {
        b.insert(0, at: 0)
    }
} else if diff < 0 {
    for _ in 0..<abs(diff) {
        a.insert(0, at: 0)
    }
}

result = Array(repeating: 0, count: a.count)
for i in (0..<a.count).reversed() {
    let sum = a[i] + b[i] + result[i]
    if i > 0 {
        result[i] = sum % 10
        result[i-1] = sum / 10
    } else {
        result[i] = sum
    }
}
let firstIndex = result.firstIndex(where: {$0 != 0}) ?? 0
print(result[firstIndex...result.count-1].map{String($0)}.joined(separator: ""))
