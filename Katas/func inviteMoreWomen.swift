//
//  func inviteMoreWomen.swift
//  Katas
//
//  Created by Maks Vogtman on 11/05/2022.
//

import Foundation


// King Arthur and his knights are having a New Years party. Last year Lancelot was jealous of Arthur, because Arthur had a date and Lancelot did not, and they started a duel.

// To prevent this from happening again, Arthur wants to make sure that there are at least as many women as men at this year's party. He gave you a list of integers of all the party goers.

// Arthur needs you to return true if he needs to invite more women or false if he is all set.

// An array (guaranteed non-associative in PHP) representing the genders of the attendees, where -1 represents women and 1 represents men.

// [output] a boolean value

// true if Arthur need to invite more women, false otherwise.


// my first solution
func inviteMoreWomen(_ arr: [Int]) -> Bool {
    if arr.reduce(0, +) <= 0 {
        return false
    } else {
        return true
    }
}



// simpler solution for this kata (my final solution)
func inviteMoreWomen2(_ arr: [Int]) -> Bool {
    return arr.reduce(0, +) <= 0 ? false : true
}



// simplest solution for this kata
func inviteMoreWomen3(_ arr: [Int]) -> Bool {
    return arr.reduce(0, +) > 0
}



// a little bit longer solution
func inviteMoreWomen4(_ arr: [Int]) -> Bool {
    let men = arr.filter( {$0 == 1} ).count
    let women = arr.filter( {$0 == -1} ).count
    
    if women >= men {
        return false
    } else {
        return true
    }
}
