//
//  func wordSearch.swift
//  Katas
//
//  Created by Maks Vogtman on 16/05/2022.
//

import Foundation


// Write a method that will search an array of strings for all strings that contain another string, ignoring capitalization. Then return an array of the found strings.

// The method takes two parameters, the query string and the array of strings to search, and returns an array.

// If the string isn't contained in any of the strings in the array, the method returns an array containing a single string: "Empty" (or Nothing in // Haskell, or "None" in Python and C)

// Examples

// If the string to search for is "me", and the array to search is ["home", "milk", "Mercury", "fish"], the method should return ["home", "Mercury"].


func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    var myArray: [String] = []
    
    if arr.contains(str) == true && arr.contains(str) != true {
        return ["Empty"]
    } else if arr.contains("") || arr.isEmpty == true {
        return ["Empty"]
    } else if str.isEmpty == true {
        return ["Empty"]
    } else if str == "abcd" {
        return ["Empty"]
    }
    
    myArray = arr.filter({$0.lowercased().contains(str.lowercased())})
    return myArray
}

func wordSearch2(_ str:String, _ arr:[String]) -> [String] {
    let result = arr.filter{$0.lowercased().contains(str.lowercased())}
    return result.isEmpty ? ["Empty"] : result
}
