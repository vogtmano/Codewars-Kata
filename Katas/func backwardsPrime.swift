//
//  func backwardsPrime.swift
//  Katas
//
//  Created by Maks Vogtman on 02/02/2023.
//

import Foundation

// Backwards Read Primes are primes that when read backwards in base 10 (from right to left) are a different prime. (This rules out primes which are palindromes.)

// Examples:
// 13 17 31 37 71 73 are Backwards Read Primes
// 13 is such because it's prime and read from right to left writes 31 which is prime too. Same for the others.

// Task

// Find all Backwards Read Primes between two positive given numbers (both inclusive), the second one always being greater than or equal to the first one. The resulting array or the resulting string will be ordered following the natural order of the prime numbers.

// Examples (in general form):

// backwardsPrime(2, 100) => [13, 17, 31, 37, 71, 73, 79, 97]
// backwardsPrime(9900, 10000) => [9923, 9931, 9941, 9967]
// backwardsPrime(501, 599) => []

func isPrimee(_ number: Int) -> Bool {
    guard number >= 2 else { return false }
    guard number > 2 || number % 2 != 0 else { return false }
    
    for i in 2..<Int(sqrt(Double(number))) + 1 {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}


func reverse(_ number: Int) -> Int {
    var reversed = 0
    var num = number
    
    while num > 0 {
        reversed = reversed * 10 + num % 10
        num = num / 10
    }
    
    return reversed
}


func backwardsPrime(_ start: Int, _ stop: Int) -> [Int] {
    var result = [Int]()
    
    for i in start...stop {
        let reversed = reverse(i)
        if isPrimee(i) && isPrimee(reversed) && i != reversed {
            result.append(i)
        }
    }
    
    return result
}





// Other solution for this kata
extension Int {
    var reverse: Int {
        return Int(String(String(self).reversed()))!
    }
}


func prime(_ n: Int) -> Bool {
    return n < 2 ? false : n == 2 || n == 3 || (2...Int(Double(n).squareRoot())).filter { n % $0 == 0 }.isEmpty
}


func backwardsPrime2(_ start: Int, _ stop: Int) -> [Int] {
    return Array(start...stop).filter { prime($0) && prime($0.reverse) && $0 != $0.reverse }
}
