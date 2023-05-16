//
//  func booleanToString.swift
//  Katas
//
//  Created by Maks Vogtman on 27/01/2022.
//

import Foundation

// Implement a function which convert the given boolean value into its string representation.

// Note: Only valid inputs will be given.

func booleanToString(_ b: Bool) -> String {
    return b ? "true" : "false"
}





// other solution

func booleanToString2(_ b: Bool) -> String {
    return String(b)
}





// other solution

func booleanToString3(_ b: Bool) -> String {
    // .description method is a textual representation of the Boolean value
    return b.description
}
