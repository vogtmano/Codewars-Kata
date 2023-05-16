//
//  func diamond.swift
//  Katas
//
//  Created by Maks Vogtman on 16/11/2022.
//

import Foundation

// Task

// You need to return a string that looks like a diamond shape when printed on the screen, using asterisk (*) characters. Trailing spaces should be removed, and every line must be terminated with a newline character (\n).

// Return nil if the input is an even number or negative, as it is not possible to print a diamond of even or negative size.

// Examples

// A size 3 diamond:

//  *
// ***
//  *
// ...which would appear as a string of " *\n***\n *\n"

// A size 5 diamond:

//   *
//  ***
// *****
//  ***
//   *
// ...that is:

// "  *\n ***\n*****\n ***\n  *\n"


func diamond(_ size: Int) -> String? {
    guard size > 0 && size % 2 == 1 else { return "" }
    var diamond = ""
    let centerRow = size / 2 + 1
    
    for row in 1...size {
        let spaces = abs(centerRow - row)
        diamond += String.init(repeating: " ", count: spaces) + String.init(repeating: "*", count: size - spaces * 2) + "\n"
    }
    
    return diamond
}



// Other solution
func diamond2(_ size: Int) -> String? {
  guard (size % 2 != 0 &&  size > 0) else { return nil }
  var result = String(repeating: "*", count: size) + "\n"
  for number in stride(from: size-2, to: 0, by: -2) {
    let row = String(repeating: " ", count: (size - number) / 2) + String(repeating: "*", count: number) + "\n"
    result = row + result + row
  }
  return result
}
