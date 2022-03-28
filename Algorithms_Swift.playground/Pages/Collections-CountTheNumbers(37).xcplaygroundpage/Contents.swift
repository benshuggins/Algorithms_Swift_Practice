//Challenge 37: Count the numbers

//Write an extension for collections of integers that returns the number of times a specific digit
//appears in any of its numbers.
//Sample input and output
//• The code [5, 15, 55, 515].challenge37(count: "5") should return 6.
//• The code [5, 15, 55, 515].challenge37(count: "1") should return 2.
//• The code [55555].challenge37(count: "5") should return 5.
//• The code [55555].challenge37(count: "1") should return 0.

//____________________________________________________________________
// My Thoughts: To count the number of digits inside an integer the best thing to do is to convert it to a string and then check each character.

import Foundation

var greeting = "Hello, playground"

//__________________________Here is the first answer.


extension Collection where Iterator.Element == Int {
    func challenge37(count: String)-> Int{
        let answer = reduce(0) {$0 + String($1).filter{ (char: Character) in char == Character(count)}.count}
        return answer
}
}
//[5, 15, 55, 515].challenge37(count: "5")  // should return 6
[55555].challenge37(count: "5") // should return 5


//___________________________________________________________________-
// Here is a second answer - The idea is to convert the integer to a string and then check each character for the one that we are looing for

extension Collection where Iterator.Element == Int {
    
    func challenge37a(count: Character)-> Int{
        var total = 0
            
        for item in self { // loop over each element
            
            let str = String(item) // stringify this integer element
            
            for letter in str { // loop over each letter in the string
                if letter == count {
                    total += 1
            }
            }
        }
        return total
    }
    
}
[5, 15, 55, 515].challenge37a(count: "5")
