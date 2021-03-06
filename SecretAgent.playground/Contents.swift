import UIKit

/*
 In order to do this, you will need to implement the function protectSecret(_ secret: String, withPassword password: String) -> (String) -> String. This function will return another function that takes possible password strings as input. If the entered password is correct the new function returns the hidden secret, but if it is the incorrect password the function returns "Sorry. No hidden secrets here."
 */

/*  -test secret-
    let secretFunction = protectSecret("Steal the world's supply of french fries!", withPassword: "5up3r53cr37")
 */

func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func parce(_ key: String) -> String {
        password == key ? secret : "Sorry. No hidden secrets here."
    }
    return parce
}

/*
    -test-
 secretFunction("5up3r53cr37")
 */

/*
 We have learned that UMBRA bases all of their safe combinations on the number of the room they are located in. The safe combinations are generated by repeatedly applying a special function to the room number. So the first number of the combination will come from applying the function to the room number, the second will come from applying the function to the first number, and the third from applying the function to the second number.

 However, UMBRA regularly changes the function used to generate the combinations, so your tool will need to take both a room number and the appropriate function in order to generate the combination.
 */


func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let first = f(room)
    let second = f(first)
    let third = f(second)
    
    return(first, second, third)
}


