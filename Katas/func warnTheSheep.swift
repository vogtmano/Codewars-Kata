//
//  func warnTheSheep.swift
//  Katas
//
//  Created by Maks Vogtman on 12/07/2022.
//

import Foundation

// Wolves have been reintroduced to Great Britain. You are a sheep farmer, and are now plagued by wolves which pretend to be sheep. Fortunately, you are good at spotting them.

// Warn the sheep in front of the wolf that it is about to be eaten. Remember that you are standing at the front of the queue which is at the end of the array:

// [sheep, sheep, sheep, sheep, sheep, wolf, sheep, sheep]      (YOU ARE HERE AT THE FRONT OF THE QUEUE)
//   7      6      5      4      3            2      1

// If the wolf is the closest animal to you, return "Pls go away and stop eating my sheep". Otherwise, return "Oi! Sheep number N! You are about to be eaten by a wolf!" where N is the sheep's position in the queue.

// Note: there will always be exactly one wolf in the array.

// Examples

// Input: ["sheep", "sheep", "sheep", "wolf", "sheep"]
// Output: "Oi! Sheep number 1! You are about to be eaten by a wolf!"

// Input: ["sheep", "sheep", "wolf"]
// Output: "Pls go away and stop eating my sheep"

func warnTheSheep(_ queue: [String]) -> String {
    let result = Array(queue.reversed()).firstIndex(where: { $0 == "wolf" })
        
    return result! == 0 ? "Pls go away and stop eating my sheep" : "Oi! Sheep number \(result!)! You are about to be eaten by a wolf!"
}


// Other solution for this kata

func warnTheSheep2(_ queue: [String]) -> String {
    let wolfIndex = queue.firstIndex(of: "wolf") ?? 0
    
    return queue.last == "wolf" ? "Pls go away and stop eating my sheep" : "Oi! Sheep number \(queue.count - wolfIndex - 1)! You are about to be eaten by a wolf!"
}

