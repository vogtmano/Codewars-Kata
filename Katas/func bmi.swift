//
//  func bmi.swift
//  Katas
//
//  Created by Maks Vogtman on 03/11/2021.
//

import Foundation

// Write function bmi that calculates body mass index (bmi = weight / height2).

// if bmi <= 18.5 return "Underweight"

// if bmi <= 25.0 return "Normal"

// if bmi <= 30.0 return "Overweight"

// if bmi > 30 return "Obese"


func bmi(_ weight: Int, _ height: Double) -> String {
    let myWeight = Double(weight)
    let myHeight = height * height
    
    
    if myWeight / myHeight <= 18.5 {
        return("Underweight")
    } else if myWeight / myHeight <= 25 {
        return("Normal")
    } else if myWeight / myHeight <= 30 {
        return("Overweight")
    } else {
        return("Obese")
    }
}
