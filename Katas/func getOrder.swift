//
//  func getOrder.swift
//  Katas
//
//  Created by Maks Vogtman on 17/05/2022.
//

import Foundation


// Some new cashiers started to work at your restaurant.

// They are good at taking orders, but they don't know how to capitalize words, or use a space bar!

// All the orders they create look something like this:

// "milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza"

// The kitchen staff are threatening to quit, because of how difficult it is to read the orders.

// Their preference is to get the orders as a nice clean string with spaces and capitals like so:

// "Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"

// The kitchen staff expect the items to be in the same order as they appear in the menu.

// The menu items are fairly simple, there is no overlap in the names of the items:

// 1. Burger
// 2. Fries
// 3. Chicken
// 4. Pizza
// 5. Sandwich
// 6. Onionrings
// 7. Milkshake
// 8. Coke


func getOrder(_ input: String) -> String {
    
    var foodItems = ""
    let menu = ["Burger", "Fries", "Chicken", "Pizza", "Sandwich", "Onionrings", "Milkshake", "Coke"]
    
    menu.forEach{ food in
        for _ in 0..<(input.components(separatedBy: food.lowercased()).count - 1) {
            foodItems += " " + food
        }
    }
    return foodItems.trimmingCharacters(in: .whitespaces)
}
