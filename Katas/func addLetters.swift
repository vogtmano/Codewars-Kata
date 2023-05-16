//
//  Func addLetters.swift
//  Katas
//
//  Created by Maks Vogtman on 17/10/2021.
//

import Foundation


//Your task is to add up letters to one letter.
//The function will be given an Array<Character>, each one being a letter to add, and the function will return a Character.

//Notes:
//Letters will always be lowercase.
//Letters can overflow (see second to last example of the description)
//If no letters are given, the function should return 'z'

func testAddLetters(_ letters: [Character]) -> Character {
    let alphabet: Dictionary<Character, Int> = [
        "a": 1,
        "b": 2,
        "c": 3,
        "d": 4,
        "e": 5,
        "f": 6,
        "g": 7,
        "h": 8,
        "i": 9,
        "j": 10,
        "k": 11,
        "l": 12,
        "m": 13,
        "n": 14,
        "o": 15,
        "p": 16,
        "r": 17,
        "s": 18,
        "t": 19,
        "u": 20,
        "v": 21,
        "w": 22,
        "x": 23,
        "y": 24,
        "z": 25
    ]
   
    let numbers = [1: "a",
                   2: "b",
                   3: "c",
                   4: "d",
                   5: "e",
                   6: "f",
                   7: "g",
                   8: "h",
                   9: "i",
                   10: "j",
                   11: "k",
                   12: "l",
                   13: "m",
                   14: "n",
                   15: "o",
                   16: "p",
                   17: "r",
                   18: "s",
                   19: "t",
                   20: "u",
                   21: "v",
                   22: "w",
                   23: "x",
                   24: "y",
                   25: "z"]
    
    var sum: Int = 0
    // 1. convert letters to numbers and sum them
    for letter in letters {
        let valueForLetter = alphabet[letter]!
      sum += valueForLetter
    }
    // 2. Convert the sum to a letter
    let valueForNumber = numbers[sum]
    
    
    return "z"
}

class LetterToNumberConverter {
    
// 1. Create a dictionairy with keys - Characters and values - Ints
    static let alphabet: Dictionary<Character, Int> = [
        "a": 1,
        "b": 2,
        "c": 3,
        "d": 4,
        "e": 5,
        "f": 6,
        "g": 7,
        "h": 8,
        "i": 9,
        "j": 10,
        "k": 11,
        "l": 12,
        "m": 13,
        "n": 14,
        "o": 15,
        "p": 16,
        "r": 17,
        "s": 18,
        "t": 19,
        "u": 20,
        "v": 21,
        "w": 22,
        "x": 23,
        "y": 24,
        "z": 25
    ]
    
// 2. Create a function, that will convert a letter to a number
    static func convertToANumber(_ letter: Character) -> Int {
        // A dictionairy is a collection of key-value pairs. In the line 95, you're giving a key, to get the value. So, when u use [letter], which in this dictionairy is a key (and also a parameter label), you will receive it's value.
        return alphabet[letter]!
    }
}

class NumberToLetterConverter {
    
// 3. Create a dictionairy with keys - Ints and values - Characters
    static let numbers: Dictionary<Int, Character> = [1: "a",
                                                      2: "b",
                                                      3: "c",
                                                      4: "d",
                                                      5: "e",
                                                      6: "f",
                                                      7: "g",
                                                      8: "h",
                                                      9: "i",
                                                      10: "j",
                                                      11: "k",
                                                      12: "l",
                                                      13: "m",
                                                      14: "n",
                                                      15: "o",
                                                      16: "p",
                                                      17: "r",
                                                      18: "s",
                                                      19: "t",
                                                      20: "u",
                                                      21: "v",
                                                      22: "w",
                                                      23: "x",
                                                      24: "y",
                                                      25: "z"]
    
// 4. Create a function, that will convert a number to a letter
    static func convertToALetter(_ number: Int) -> Character {
        // A dictionairy is a collection of key-value pairs. In the line 107, you're giving a key, to get the value. So, when u use [number], which in this dictionairy is a key (and also a parameter label), you will receive it's value.
        return numbers[number]!
    }
}
// 5. Create a function, that will add letters
func addLetters(_ letters: [Character]) -> Character {
// 6. Create a variable, named sum which is of type Int and assign 0 as it's value
    var sum: Int = 0
// 7. Create a for-in loop that iretates through a letter (a Character?) in Array of Characters
    for letter in letters {
// 8. Assign a value to the variable, named sum so you can use it later.
        // Add and assign a value of LetterToNumberConverter.convertToANumber(letter) to the sum
        sum += LetterToNumberConverter.convertToANumber(letter)
    }
    var rest = sum % 25
// 9. Use of convertion where from the sum of numbers we will get the letter, and return it
    // pod tym NumberToLetterConverter.convertToALetter(sum) KRYJE SIĘ WARTOŚĆ. Jakakolwiek litera by się tam nie kryła to ma już przypisaną do siebie wartość. Np b = 2, d = 4 etc.
    return NumberToLetterConverter.convertToALetter(sum)
}

