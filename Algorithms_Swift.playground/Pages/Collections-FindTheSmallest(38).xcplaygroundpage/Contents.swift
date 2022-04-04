//Find the Smallest: Challenge 38

//Challenge 38: Find N smallest
//Difficulty: Easy
//Write an extension for all collections that returns the N smallest elements as an array, sorted
//smallest first, where N is an integer parameter.
//Sample input and output
//• The code [1, 2, 3, 4].challenge38(count: 3) should return [1, 2, 3].
//• The code ["q", "f", "k"].challenge38(count: 10) should return [“f”,
//“k”, “q”].
//• The code [256, 16].challenge38(count: 3) should return [16, 256].
//• The code [String]().challenge38(count: 3) should return an empty
//array.

import Foundation

var greeting = "Hello, playground"


// Because finding the smallest of any value require the < > , you need to conform to the Comparable protocol

// I thoough that this should return the count and it doesnt change to 1 and it returns a greater count 

extension Collection where Iterator.Element: Comparable {

    func challenge38(count: Int)->[Iterator.Element] {
        let sortedArr = self.sorted()
        print(sortedArr)
    
        return Array(sortedArr.prefix(count))
}
}
   // [1, 2, 3, 4].challenge38(count: 3)
["q", "f", "k"].challenge38(count: 1)
