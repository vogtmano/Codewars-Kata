//
//  func converter.swift
//  Katas
//
//  Created by Maks Vogtman on 18/04/2023.
//

import Foundation

// Sometimes, I want to quickly be able to convert miles per imperial gallon (mpg) into kilometers per liter (kpl).

// Create an application that will display the number of kilometers per liter (output) based on the number of miles per imperial gallon (input).

// Your answer should be accurate within 0.01 kpl.

// Some useful associations relevant to this kata:

// 1 Imperial Gallon = 4.54609188 litres
// 1 Mile = 1.609344 kilometres


func converter(mpg: Int) -> Double {
    let litres = 4.546
    let km = 1.609
    let result = Double(mpg) / litres * km
    
    return round(result * 100) / 100.0
}
