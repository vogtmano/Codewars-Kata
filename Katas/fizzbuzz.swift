//
//  fizzbuzz.swift
//  Katas
//
//  Created by Maks Vogtman on 19/04/2022.
//

import Foundation

// Write a function that iterates through 1-100

// For numbers divisible by 3, print FIZZ
// For numbers divisible by 5, print BUZZ
// For numbers divisible by 3 & 5 (like 15), print FIZZBUZZ
// For numbers that don't meet any of this qualifications, print the number.

func fizzbuzz() {
    
    for number in 1...100 {
        if number % 3 == 0 && number % 5 == 0  {
            print("FIZZBUZZ")
        } else if number % 3 == 0 {
            print("FIZZ")
        } else if number % 5 == 0  {
            print("BUZZ")
        } else {
            print(number)
        }
    }
}


