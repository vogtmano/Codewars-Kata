//
//  euclideanDistanceBetween.swift
//  Katas
//
//  Created by Maks Vogtman on 28/05/2022.
//

import Foundation

// Implement a function to calculate the distance between two points in n-dimensional space. The two points will be passed to your function as arrays of the same length.

// Round your answers to two decimal places.

func euclideanDistanceBetween(_ point1: [Double], and point2: [Double]) -> Double {
    let result = zip(point1, point2).map({ pow($0.0 - $0.1, 2.0 )}).reduce(0.0) { (result, value) -> Double in
        return result + value
    }
    
    return Double(round(100 * sqrt(result)) / 100)
}


// What funcionality have been implemented in this kata:

// zip() - Creates a sequence of pairs built out of two underlying sequences.

// func pow(_: Double, _: Double) -> Double

// func round(_: Double) -> Double

// func sqrt(_: Double) -> Double

