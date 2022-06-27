//
//  6603.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/21.
//
//독일 로또는 {1, 2, ..., 49}에서 수 6개를 고른다.
//
//로또 번호를 선택하는데 사용되는 가장 유명한 전략은 49가지 수 중 k(k>6)개의 수를 골라 집합 S를 만든 다음 그 수만 가지고 번호를 선택하는 것이다.
//
//예를 들어, k=8, S={1,2,3,5,8,13,21,34}인 경우 이 집합 S에서 수를 고를 수 있는 경우의 수는 총 28가지이다. ([1,2,3,5,8,13], [1,2,3,5,8,21], [1,2,3,5,8,34], [1,2,3,5,13,21], ..., [3,5,8,13,21,34])
//
//집합 S와 k가 주어졌을 때, 수를 고르는 모든 방법을 구하는 프로그램을 작성하시오.

import Foundation

var inputNumbers: [Int] = []
var n: Int = 0
var m: Int = 0
var check = Array(repeating: false, count: n+1)
var result = [Int]()
var str = ""

while true {
    var input = readLine()!.split(separator: " ").map {Int(String($0))!}
    
    n = input[0]
    
    if n == 0 {
        break
    }
    
    input.removeFirst()
    inputNumbers = input
    m = 6
    check = Array(repeating: false, count: n+1)
    result = [Int]()
    str = ""
    
    recur(depth: 0)
    print(str)
}

func recur(depth: Int) {
    if depth == m {
        if result.sorted() == result {
            str += result.map({String($0)}).joined(separator: " ") + "\n"
        }
        return
    }
    
    for i in 1...n {
        if check[i] == false {
            check[i] = true
            result.append(inputNumbers[i-1])
            recur(depth: depth + 1)
            check[i] = false
            result.removeLast()
        }
    }
}
