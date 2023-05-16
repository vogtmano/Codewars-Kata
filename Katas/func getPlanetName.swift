//
//  getPlanetName.swift
//  Katas
//
//  Created by Maks Vogtman on 17/03/2022.
//

import Foundation


// The function is not returning the correct values. Can you figure out why?

// Example (Input --> Output ):

// 3 --> "Earth"


// before solution
func getPlanetName(_ id: Int) -> String {
    var name: String
    switch id {
    case 1:
        name = "Mercury"
    case 2:
        name = "Venus"
    case 3:
        name = "Earth"
    case 4:
        name = "Mars"
    case 5:
        name = "Jupiter"
    case 6:
        name = "Saturn"
    case 7:
        name = "Uranus"
    case 8:
        name = "Neptune"
    default:
        name = ""
    }
    // you needed to put "return" before the last curly bruckets
    return name
}




// other solution for this kata

func getPlanetName2(_ id: Int) -> String {
    switch id {
    case 1: return "Mercury"
    case 2: return "Venus"
    case 3: return "Earth"
    case 4: return "Mars"
    case 5: return "Jupiter"
    case 6: return "Saturn"
    case 7: return "Uranus"
    case 8: return "Neptune"
    default: return ""
    }
}
