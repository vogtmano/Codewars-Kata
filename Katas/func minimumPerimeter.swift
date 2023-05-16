//
//  func minimumPerimeter.swift
//  Katas
//
//  Created by Maks Vogtman on 18/08/2022.
//

import Foundation

// A rectangle can be defined by two factors: height and width.

// Its area is defined as the multiplication of the two: height * width.

// Its perimeter is the sum of its four edges: height + height + width + width.

// It is possible to create rectangles of the same area but different perimeters. For example, given an area of 45, the possible heights, widths and resultant perimeters would be:

// (1, 45) = 92

// (9, 5) = 28

// (15, 3) = 36

// Note that (6, 7.5) has an area of 45 too, but is discarded in this kata because its width is non integral.

// The task is to write a function that, given an area as a positive integer, returns the smallest perimeter possible of a rectangle with integral side lengths.

// Input range:

// 1 <= area <= 5 x 10 ^ 10



func minimumPerimeter(_ area: Int64) -> Int64 {
    let squared = Int64(Double(area).squareRoot())
    
    for i in (1...squared).reversed() {
        if area % 2 == 0 {
            return 2 * (i + area / i)
        }
    }
    return 0
}



// Other solution for this kata

func minimumPerimeter2(_ area: Int64) -> Int64 {
    var width = Int64(sqrt(Double(area)))
    
    while area % width != 0 {
        width -= 1
    }
    
    return width * 2 + area / width * 2
}
