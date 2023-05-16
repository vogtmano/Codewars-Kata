//
//  func findSum.swift
//  Katas
//
//  Created by Maks Vogtman on 19/04/2022.
//

import Foundation

//Your task is to write function findSum.

//Upto and including n, this function will return the sum of all multiples of 3 and 5.

//For example:

//findSum(5) should return 8 (3 + 5)

//findSum(10) should return 33 (3 + 5 + 6 + 9 + 10)

//findSum(15) should return 60 (3 + 5 + 6 + 9 + 10 + 12 + 15)

//findSum(20) should return 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)


func findSum(_ n: Int) -> Int {
    var myArray: [Int] = []
    
    for i in 3...n {
        if i.isMultiple(of: 3) {
            myArray.append(i)
        } else if i.isMultiple(of: 5) {
            myArray.append(i)
        }
    }
    return myArray.reduce(0, +)
}



// simpler way to do this kata
func findSum2(_ n: Int) -> Int {
    var sum = 0
    
    for i in 3...n {
        if i.isMultiple(of: 3) {
            sum += i
        } else if i.isMultiple(of: 5) {
            sum += i
        }
    }
    return sum
}



// simplest solution for this kata
func findSum3(_ n: Int) -> Int {
    return (3...n).filter { $0.isMultiple(of: 3) || $0.isMultiple(of: 5) }.reduce(0, +)
}
