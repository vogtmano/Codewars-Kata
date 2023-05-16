//
//  func isNarcissistic.swift
//  Katas
//
//  Created by Maks Vogtman on 01/03/2023.
//

import Foundation

// A Narcissistic Number (or Armstrong Number) is a positive number which is the sum of its own digits, each raised to the power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).

// For example, take 153 (3 digits), which is narcissistic:
//     1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

// and 1652 (4 digits), which isn't:
//     1^4 + 6^4 + 5^4 + 2^4 = 1 + 1296 + 625 + 16 = 1938

// The Challenge:

// Your code must return true or false (not 'true' and 'false') depending upon whether the given number is a Narcissistic number in base 10.

// Error checking for text strings or other invalid inputs is not required, only valid positive non-zero integers will be passed into the function.




// My solution that didn't work on a huge numbers. Why it didn't work? Because it converts the input number into a string and maps each character to an integer. This is a problem when dealing with large numbers because converting a large number to a string and then mapping each character requires a lot of memory, which can cause a stack overflow error. Also the ^^ operator uses the pow function from the Foundation framework, which works with Double values. Double values have limited precision, so the result of the pow function can be inaccurate for large numbers. To solve this issue, it's better to write my own function to calculate the power of an integer.
precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}


func isNarcissistic(_ n: Int64) -> Bool {
    String(n).map { Int(String($0))! ^^ String(n).count }.reduce(0, +) == n
}




// Other solution for this kata, that worked.
func power(_ base: Int, _ exponent: Int) -> Int {
    var result = 1
    
    for _ in 0 ..< exponent {
        result *= base
    }
    
    return result
}

// Other function, to calculate the power.
func somePow(_ num: Int, power: Int)-> Int {
    Array(repeating: num, count: power).reduce(1, *)
}


func isNarcissistic2(_ n: Int64) -> Bool {
    var arr = [Int]()
    var number = n
    
    while number > 0 {
        let digit = number % 10
        arr.append(Int(digit))
        number /= 10
    }
    
    return arr.map { somePow($0, power: arr.count) }.reduce(0, +) == n
}
