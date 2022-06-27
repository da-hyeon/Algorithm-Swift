//
//  2108.swift
//  Algorithm
//
//  Created by 황다현 on 2022/06/21.
//
//수를 처리하는 것은 통계학에서 상당히 중요한 일이다. 통계학에서 N개의 수를 대표하는 기본 통계값에는 다음과 같은 것들이 있다. 단, N은 홀수라고 가정하자.
//
//산술평균 : N개의 수들의 합을 N으로 나눈 값
//중앙값 : N개의 수들을 증가하는 순서로 나열했을 경우 그 중앙에 위치하는 값
//최빈값 : N개의 수들 중 가장 많이 나타나는 값
//범위 : N개의 수들 중 최댓값과 최솟값의 차이
//N개의 수가 주어졌을 때, 네 가지 기본 통계값을 구하는 프로그램을 작성하시오.


import Foundation

var loopNumber = Int(readLine()!)!
var inputNumbers: [Int] = []
var sum : Double = 0
var maxValue = -4001
var minValue = 4001
var sameCheckArray: [Int] = []
var dict = [Int: Int]()

for _ in 0..<loopNumber {
    let inputNumber = Int(readLine()!)!
    dict[inputNumber, default: 0] += 1
    sum += Double(inputNumber)
    if inputNumber > maxValue {
        maxValue = inputNumber
    }
    if inputNumber < minValue {
        minValue = inputNumber
    }
    inputNumbers.append(inputNumber)
}

var maxSameCount = dict.max(by: {$0.value < $1.value})!.value
var mode = dict.filter({$0.value == maxSameCount}).keys.sorted()
inputNumbers.sort()
print(Int(round(sum / Double(loopNumber))))
print(inputNumbers[inputNumbers.count / 2])
print(mode[mode.count > 1 ? 1 : 0])
print(maxValue - minValue)
