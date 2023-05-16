//
//  func century.swift
//  Katas
//
//  Created by Maks Vogtman on 14/02/2022.
//

import Foundation

// Introduction

// The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

// Task

// Given a year, return the century it is in.

// Examples

// 1705 --> 18
// 1900 --> 19
// 1601 --> 17
// 2000 --> 20


func century(_ year: Int) -> Int {
    return (year + 99) / 100
}

// other solution for this kata

func century2(_ year: Int) -> Int {
    return Int((Double(year) / 100).rounded(.up))
}



