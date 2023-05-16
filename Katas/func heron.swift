//
//  func heron.swift
//  Katas
//
//  Created by Maks Vogtman on 25/05/2022.
//

import Foundation

// Write function heron which calculates the area of a triangle with sides a, b, and c.

// With Heron's formula. 

// Output should have 2 digits precision.


func heron(_ a: Double, _ b: Double, _ c: Double) -> Double {
    let s = (a + b + c) / 2
    
    return (s * (s - a) * (s - b) * (s - c)).squareRoot()
}


