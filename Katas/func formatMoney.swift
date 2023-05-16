//
//  func formatMoney.swift
//  Katas
//
//  Created by Maks Vogtman on 08/04/2022.
//

import Foundation

// The company you work for has just been awarded a contract to build a payment gateway. In order to help move things along, you have volunteered to create a function that will take a float and return the amount formatting in dollars and cents.

// 39.99 becomes $39.99

// The rest of your team will make sure that the argument is sanitized before being passed to your function although you will need to account for adding trailing zeros if they are missing (though you won't have to worry about a dangling period).

// Examples:

// 3 needs to become $3.00

// 3.1 needs to become $3.10


func formatMoney(_ val:Double) -> String {
    return String(format: "$%.2f", val)
}



// same solution but more extensive (rozbudowane)
func formatMoney2(_ val:Double) -> String {
    let tip: Double = val
    let tipText: String = String(format: "$%.2f", tip)
    
    return tipText
}
