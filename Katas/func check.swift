//
//  func check.swift
//  Katas
//
//  Created by Maks Vogtman on 01/02/2022.
//

import Foundation


func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    return a.contains(x) ? true : false
}

