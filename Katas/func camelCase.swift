//
//  func camelCase.swift
//  Katas
//
//  Created by Maks Vogtman on 15/11/2022.
//

import Foundation

// Write a simple camelCase function for strings. All words must have their first letter capitalized and all spaces removed.

// For instance:

// camelCase("hello case"); // ==> "HelloCase"
// camelCase("camel case word"); // ==> "CamelCaseWord"


func camelCase(_ str: String) -> String {
    str.components(separatedBy: " ").map { $0.prefix(1).uppercased() + $0.dropFirst() }.joined()
}




// Other solution for this kata
func camelCase2(_ str: String) -> String {
    str.capitalized.replacingOccurrences(of: " ", with: "")
}




// Another one
func camelCase3(_ str: String) -> String {
    str.capitalized.filter { $0 != " " }
}

