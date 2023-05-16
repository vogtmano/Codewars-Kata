//
//  func fizzBuzzCuckooClock.swift
//  Katas
//
//  Created by Maks Vogtman on 24/08/2022.
//

import Foundation

// You've always loved both Fizz Buzz katas and cuckoo clocks, and when you walked by a garage sale and saw an ornate cuckoo clock with a missing pendulum, and a "Beyond-Ultimate Raspberry Pi Starter Kit" filled with all sorts of sensors and motors and other components, it's like you were suddenly hit by a beam of light and knew that it was your mission to combine the two to create a computerized Fizz Buzz cuckoo clock!

// You took them home and set up shop on the kitchen table, getting more and more excited as you got everything working together just perfectly. Soon the only task remaining was to write a function to select from the sounds you had recorded depending on what time it was:

// Your plan

// When a minute is evenly divisible by three, the clock will say the word "Fizz".

// When a minute is evenly divisible by five, the clock will say the word "Buzz".

// When a minute is evenly divisible by both, the clock will say "Fizz Buzz", with two exceptions:

// On the hour, instead of "Fizz Buzz", the clock door will open, and the cuckoo bird will come out and "Cuckoo" between one and twelve times depending on the hour.

// On the half hour, instead of "Fizz Buzz", the clock door will open, and the cuckoo will come out and "Cuckoo" just once.

// With minutes that are not evenly divisible by either three or five, at first you had intended to have the clock just say the numbers ala Fizz Buzz, but then you decided at least for version 1.0 to just have the clock make a quiet, subtle "tick" sound for a little more clock nature and a little less noise.

// Your input will be a string containing hour and minute values in 24-hour time, separated by a colon, and with leading zeros. For example, 1:34 pm would be "13:34".

// Your return value will be a string containing the combination of Fizz, Buzz, Cuckoo, and/or tick sounds that the clock needs to make at that time, separated by spaces. Note that although the input is in 24-hour time, cuckoo clocks' cuckoos are in 12-hour time.

// Some examples

// "13:34"       "tick"
// "21:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
// "11:15"       "Fizz Buzz"
// "03:03"       "Fizz"
// "14:30"       "Cuckoo"
// "08:55"       "Buzz"
// "00:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
// "12:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"


// :00 - "cuckoo" tyle razy, która jest godzina (1-12)




func fizzBuzzCuckooClock(_ time: String) -> String {
    var minutes = ""
    var hours = ""
    
    let start = time.index(time.startIndex, offsetBy: 3)
    let end = time.index(before: time.endIndex)
    let range = start...end
    minutes += time[range]
    
    let hoursStart = time.startIndex
    let hoursEnd = time.index(time.startIndex, offsetBy: 1)
    let hoursRange = hoursStart...hoursEnd
    hours += time[hoursRange]
    
    if minutes == "00" {
        switch hours {
        case "01", "13":
            return "Cuckoo"
        case "02", "14":
            return "Cuckoo Cuckoo"
        case "03", "15":
            return "Cuckoo Cuckoo Cuckoo"
        case "04", "16":
            return "Cuckoo Cuckoo Cuckoo Cuckoo"
        case "05", "17":
            return "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
        case "06", "18":
            return "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
        case "07", "19":
            return "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
        case "08", "20":
            return "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
        case "09", "21":
            return "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
        case "10", "22":
            return "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
        case "11", "23":
            return "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
        default:
            return "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
        }
    }

    if minutes == "30" {
       return "Cuckoo"
    } else if Int(minutes)! % 3 == 0 && Int(minutes)! % 5 == 0 {
        return "Fizz Buzz"
    } else if Int(minutes)! % 3 == 0 {
        return "Fizz"
    } else if Int(minutes)! % 5 == 0 {
        return "Buzz"
    } else {
        return "tick"
    }
}


// Other solution for this kata

func fizzBuzzCuckooClock2(_ time: String) -> String {
    let hours = Int(time.split(separator: ":")[0])!
    let minutes = Int(time.split(separator: ":")[1])!
    if minutes == 30 { return("Cuckoo") }
    if minutes == 0 { return(String(String(repeating: "Cuckoo ", count: hours == 0 ? 12 : ( hours > 12 ? hours-12 : hours)).dropLast())) }
    return minutes % 3 == 0 ? ( minutes % 5 == 0 ? "Fizz Buzz" : "Fizz" ) : ( minutes % 5 == 0 ? "Buzz" : "tick" )
}



// Other solution for this kata

func fizzBuzzCuckooClock3(_ time: String) -> String {
    let formatted = time.components(separatedBy: ":")
    
    if formatted[1] == "00" {
        return Array(repeating: "Cuckoo", count: Int(formatted[0])! % 12 != 0 ? Int(formatted[0])! % 12 : 12).joined(separator: " ")
    } else if formatted[1] == "30" {
        return "Cuckoo"
    } else if formatted[1] == "15" || formatted[1] == "45" {
        return "Fizz Buzz"
    } else if Int(formatted[1])! % 3 == 0 {
        return "Fizz"
    } else if Int(formatted[1])! % 5 == 0 {
        return "Buzz"
    }
    
    return "tick"
}
