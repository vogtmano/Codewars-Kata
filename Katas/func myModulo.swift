//
//  Func .swift
//  Katas
//
//  Created by Maks Vogtman on 19/10/2021.
//

import Foundation

// funkcja myModulo, która bierze liczbę np. 25, bierzę modulo np. 4 i zwraca resztę 1

// func myModulo that takes parameter labels of type Int - liczba and dzielnik and returns an Int
func myModulo(liczba: Int, dzielnik: Int) -> Int {
// first conditional if, which is a Boolean, that checks if liczba is equal to dzielnik. If this Boolean is true return 0
    if liczba == dzielnik {
        return 0
    }
    // I declared a variable, named roznica
    // I assigned a value of liczba to the variable, named roznica
    var roznica = liczba
    // a while loop with conditional that checks if roznica is greater than dzielnik
    while roznica > dzielnik {
    // if roznica is greater than dzielnik, decrease the value untill roznica will be less than dzielnik
    roznica -= dzielnik
    }
    // return roznica
    return roznica
}


