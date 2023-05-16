//
//  func countArare.swift
//  Katas
//
//  Created by Maks Vogtman on 30/05/2022.
//

import Foundation

// The Arara are an isolated tribe found in the Amazon who count in pairs. For example one to eight is as follows:

// 1 = anane
// 2 = adak
// 3 = adak anane
// 4 = adak adak
// 5 = adak adak anane
// 6 = adak adak adak
// 7 = adak adak adak anane
// 8 = adak adak adak adak

// Take a given number and return the Arara's equivalent.

// e.g.

// countArara 3 // -> "adak anane"

// countArara 8 // -> "adak adak adak adak"



func countArare(_ n: Int) -> String {
    var oddString = ""
    var evenString = ""
    
    for number in 1...n {
        if number % 2 != 0 {
            if number >= 3 {
                oddString += ("adak ")
                if number >= n {
                    oddString.append("anane")
                }
            }
        }
        
        if n == 1 {
            oddString = "anane"
        }
        
        else if number % 2 == 0 {
            evenString += "adak "
            
        }
        
        if n == 2 {
            evenString = ("adak")
        }
    }
    return n % 2 == 0 ? evenString : oddString
}








//func countArare3(_ n: Int) -> String {
//    String(n).filter({"\($0)" % 2 == 0 ? "adak " : "anane"; "\($0)" % 2 != 0 ? "anane" : "adak"}).components(separatedBy: " ").joined()
//}
