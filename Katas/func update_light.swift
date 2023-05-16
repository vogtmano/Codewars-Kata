//
//  func update_light.swift
//  Katas
//
//  Created by Maks Vogtman on 06/04/2023.
//

import Foundation

// You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.

// Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.

// For example, when the input is green, output should be yellow.


func update_light(_ current: String) -> String {
    switch current {
    case "green":
        return "yellow"
        
    case "yellow":
        return "red"
        
    default:
        return "green"
    }
}






func update_light2(_ current: String) -> String {
    current == "red" ? "green" : current == "green" ? "yellow" : "red"
}






func update_light3(_ current: String) -> String {
    let lights = ["red": "green", "green": "yellow", "yellow": "red"]
    return lights[current]!
}
