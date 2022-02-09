import UIKit

/*
 The auto dealers in your town are all running a five year, 0% interest promotion that you would like to take advantage of. Implement the canIBuy(vehicle:price:monthlyBudget:) function that takes the name of the vehicle you are looking at, the price of the car, and your monthly budget and returns a string letting you know whether you can afford the car or not, if the monthly payment is within 10 of your monthly budget you will want to return a special reminder to be frugal:
 */

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let payment = monthlyBudget * 10
    
    if payment > price {
     return "Yes! I'm getting a \(vehicle)"
    } else {
     return "Darn! No \(vehicle) for me"
    }
}

/*
 Implement the licenseType(numberOfWheels:) function that takes the number of wheels on your new vehicle and returns the type of license you will need. Vehicles with 2 or 3 wheels will require a motorcycle license, vehicles with 4 or 6 wheels will require an automobile license, vehicles with 18 wheels require a commercial trucking license, and any other number of wheels returning an failure message:
 */

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
    case 2...3:
        return "You will need a motorcycle license for your vehicle"
    case 4...6:
        return "You will need an automobile license for your vehicle"
    case 8...18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
}
