//
//  func flyBy.swift
//  Katas
//
//  Created by Maks Vogtman on 22/09/2022.
//

import Foundation

// The other day I saw an amazing video where a guy hacked some wifi controlled lightbulbs by flying a drone past them. Brilliant.

// In this kata we will recreate that stunt... sort of.

// You will be given two strings: lamps and drone. lamps represents a row of lamps, currently off, each represented by x. When these lamps are on, they should be represented by o.

// The drone string represents the position of the drone T (any better suggestion for character??) and its flight path up until this point =. The drone always flies left to right, and always begins at the start of the row of lamps. Anywhere the drone has flown, including its current position, will result in the lamp at that position switching on.

// Return the resulting lamps string. See example tests for more clarity.

// ("xxxxxx", "====T"), "ooooox")
// ("xxxxxxxxx", "==T"), "oooxxxxxx")
// ("xxxxxxxxxxxxxxx", "=========T"), "ooooooooooxxxxx")



func flyBy(lamps: String, drone: String) -> String {
    lamps.replacingCharacters(in: drone.firstIndex(of: "=")!...drone.lastIndex(of: "T")!, with: String.init(repeating: "o", count: drone.count))
}




// Other solution for this kata
func flyBy2(lamps: String, drone: String) -> String {
    String(repeating: "o", count: drone.count) + String(repeating: "x", count: lamps.count - drone.count)
}
