//
//  func greet.swift
//  Katas
//
//  Created by Maks Vogtman on 01/02/2022.
//

import Foundation

// Create a function that gives a personalized greeting. This function takes two parameters: name and owner.

// Use conditionals to return the proper message:

//  case                                           return
// name equals owner                            'Hello boss'
// otherwise                                    'Hello guest'


func great(_ name: String, _ owner: String) -> String {
    if name == owner {
        return "Hello boss"
    } else {
        return "Hello guest"
    }
}


// other solution for this kata

func great2(_ name: String, _ owner: String) -> String {
    return name == owner ? "Hello boss" : "Hello guest"
}
