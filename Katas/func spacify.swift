//
//  func spacify.swift
//  Katas
//
//  Created by Maks Vogtman on 23/05/2022.
//

import Foundation

// Modify the spacify function so that it returns the given string with spaces inserted between each character.

// spacify("hello world") // "h e l l o   w o r l d"


func spacify(_ str: String) -> String {
    return str.compactMap { "\($0)"}.joined(separator: " ")
}
