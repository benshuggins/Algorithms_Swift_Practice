//Most Common Element Array

import Foundation

var greeting = "Hello, playground"

// Problem: Given an array of strings, return the most common name
//________________________________________________________________________________________________

let names = ["ben", "jon", "gill", "ben", "jon", "andy", "andy", "gil", "ben"] // should return ben : 3 times

//________________________________________________________________________________________________
    // My steps

// We need to build a dictionary with [name: count] for each element in the array. once we have the count for each name in dictionary form then we can loop through the dictionaries and pull out the name with the highest value

// Another idea is to map the array and give each element a value of 1 and then use uniquing keys method + to add them up and that could yeild our dictionary.


func mostCommonElement(_ input: [String])->String?{
    var result: String?
    var dictionary = [String: Int]()  // dictionary to construct
    
    input.forEach { (element) in
           
        if let count = dictionary[element] {
            dictionary[element] = count + 1  // has a count so add 1
          //  print("Name: \(element), Count: \(dictionary[element])")
        } else {
            dictionary[element] = 1   // Dictionary not yet assigned so assign 1
         //   print("Name: \(element), Count: \(dictionary[element])")
        }
    }
    print(dictionary)
    // Loop through dictionary and return the highest value
    
    var max = 0
    
    for (key, value) in dictionary {
        if value > max {
          max = value
          result = key
        }
    }
    return result
}
if let names = mostCommonElement(names) {
    print(names)
}

