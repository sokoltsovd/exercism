import UIKit
// TODO: define the 'expectedMinutesInOven' constant
let expectedMinutesInOven = 40
// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes min: Int) -> Int {
    return expectedMinutesInOven - min
}
// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers num: Int) -> Int {
    return num * 2
}
// TODO: define the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers num: Int, elapsedMinutes min: Int) -> Int {
    return preparationTimeInMinutes(layers: num) + min
}
