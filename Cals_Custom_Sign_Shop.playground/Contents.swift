import UIKit
/*
 // TODO: define the 'birthday' String constant
 // TODO: define the 'valentine' String constant
 // TODO: define the 'anniversary' String constant
 // TODO: define the 'space' Character constant
 // TODO: define the 'exclamation' Character constant
 */
let birthday = "Birthday"
let valentine = "Valentine's Day"
let anniversary = "Anniversary"
let space: Character = " "
let exclamation: Character = "!"

/*
 This function takes one of the three strings you defined in the first task as the for parameter and a String holding someone's name as the name parameter and uses concatenation as well as the characters defined in task #2 to build up a phrase for a sign.
 */

func buildSign(for occasion: String, name: String) -> String {
    return "Happy \(occasion + String(space) + name + String(exclamation))"
}

/*
 Implement the function which takes a name as a string parameter and a year as a integer parameter and uses string interpolation to create a phrase for a sign that uses a newline to separate the two lines of the message.
*/

func graduationFor(name: String, year: Int) -> String {
    return "Congratulations \(name)\(exclamation)\nClass of \(year)"
}

/*
 Implement the function which takes a string that holds the contents of the sign and returns the cost to create the sign, which is 2 dollars for each character in the sign plus a base price of 20 dollars.
 */

func costOf(sign: String) -> Int {
    return sign.count * 2 + 20
}

costOf(sign: buildSign(for: birthday, name: "Grandma"))
