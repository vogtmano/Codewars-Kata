//
//  func findRoutes.swift
//  Katas
//
//  Created by Maks Vogtman on 18/04/2023.
//

import Foundation

// We are tracking down our rogue agent Matthew Knight also known as Roy Miller. He travels from places to places to avoid being tracked. Each of his travels are based on a list of itineraries in an unusual or incorrect order. The task is to determine the routes he will take in his every journey.

// Task

// You are given an array of routes of his itineraries. List down the only places where he will go in correct order based on his itineraries.

// Example

// Given the following routes:

// [ [USA, BRA], [JPN, PHL], [BRA, UAE], [UAE, JPN] ]

// The result will be:

// "USA, BRA, UAE, JPN, PHL"

// Note:

// It is safe to assume that there will be no repeating place with a different route.
// There are no empty routes.
// There will be at least one (1) route (from one waypoint to another).


func findRoutes(routes: [[String]]) -> String? {
    // Extract all the start and end cities from the routes
    let startCities = routes.map { $0.first! }
    let endCities = routes.map { $0.last! }

    // Find the starting city that is not the ending city of any route
    let startingCity = startCities.first(where: { !endCities.contains($0) })!

    // Create an empty array to store the final route
    var finalRoute = [startingCity]

    // Iterate over the routes to find the next city in the route
    while finalRoute.count < routes.count + 1 {
        // Find the next city in the route
        let nextCity = routes.first(where: { $0.first == finalRoute.last && !$0.dropFirst().contains(finalRoute.last!) })!.last!
        // Add the next city to the final route
        finalRoute.append(nextCity)
    }

    // Return the final route as a string
    return finalRoute.joined(separator: ", ")
}

// Explanation:

// 1. Extract all the start and end cities from the routes using the map function.

// 2. Find the starting city that is not the ending city of any route by using the first(where:) method and the contains method on the endCities array.

// 3. Create an empty array to store the final route and add the starting city to it.

// 4. Iterate over the routes until the final route has all the cities in the input array, in the order they are given. For each iteration:

// a. Find the next city in the route by using the first(where:) method and a closure that checks if the first city in the route is the same as the last city in the final route, and if the final route does not already contain the next city. The dropFirst() method is used to remove the first city in the route before checking if the next city is in the remaining cities.

// b. Add the next city to the final route.

// Return the final route as a string using the joined(separator:) method.





// Other solution for this kata
func findRoutes2(routes: [[String]]) -> String? {
    let path = routes.reduce(into: [String: String]()) { (path, step) in path[step[0]] = step[1] }
    var start = Set(path.keys).subtracting(path.values).first!
    
    return sequence(first: start) { path[$0] }.joined(separator: ", ")
}

