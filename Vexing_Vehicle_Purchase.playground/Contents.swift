import UIKit

/*
 The auto dealers in your town are all running a five year, 0% interest promotion that you would like to take advantage of. Implement the canIBuy(vehicle:price:monthlyBudget:) function that takes the name of the vehicle you are looking at, the price of the car, and your monthly budget and returns a string letting you know whether you can afford the car or not, if the monthly payment is within 10 of your monthly budget you will want to return a special reminder to be frugal:
 */

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let mounthlyPay = price / 60.0
    let budgetBoundary = 10.0
    
    if mounthlyPay > monthlyBudget + budgetBoundary {
     return "Darn! No \(vehicle) for me"
    } else if monthlyBudget < mounthlyPay && mounthlyPay <= monthlyBudget + budgetBoundary {
     return "I'll have to be frugal if I want a \(vehicle)"
    } else {
        return "Yes! I'm getting a \(vehicle)"
    }
}

/*
 Implement the licenseType(numberOfWheels:) function that takes the number of wheels on your new vehicle and returns the type of license you will need. Vehicles with 2 or 3 wheels will require a motorcycle license, vehicles with 4 or 6 wheels will require an automobile license, vehicles with 18 wheels require a commercial trucking license, and any other number of wheels returning an failure message:
 */

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
    case 2,3:
        return "You will need a motorcycle license for your vehicle"
    case 4,6:
        return "You will need an automobile license for your vehicle"
    case 18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
}

/*
 The annual registration fee for your new vehicle is based on the following formula:

 For any vehicle 10 years old or older, the fee is a flat $25.
 For any newer car:
 Start with a base cost that is either the Manufacturer's Standard Retail Price (MSRP) for the vehicle, or $25,000 whichever is greater.
 Then for each year of age, subtract 10% of the base price.
 Finally, divide that value by 100. Return the nearest integer dollar amount that is less than or equal to this value.
 */

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
  var regfee = 0.0;
  if (yearsOld < 10) {
     regfee = (((msrp < 25000) ? 25000.0 : Double(msrp)) * (1.0 - Double(yearsOld)/10.0))/100.0;
  } else {
     regfee = 25.0
  }
  return Int(regfee)

}


