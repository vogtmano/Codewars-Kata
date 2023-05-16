//
//  KataTwist.swift
//  Katas
//
//  Created by Maks Vogtman on 03/02/2022.
//

import Foundation

// This is an easy twist to the example kata (provided by Codewars when learning how to create your own kata).

// Add the value "codewars" to the array websites/Websites 1,000 times.


func KataTwist() {
    let myString = "codewars"
    
    var websites: [String] = []
    
    return websites.append(myString)
}


// other solution for this kata

func KataTwist2() {
    let _ = String(repeating: "codewars", count: 1000)
}
