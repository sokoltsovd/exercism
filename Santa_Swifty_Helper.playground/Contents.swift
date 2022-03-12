/*
 Your first task is updating the complex number array that helps run Santa's sleigh. The boss discovered that the last development team stored the arrays using Cartesian coordinates rather than polar coordinates, which everyone knows are the boss' favorite.

For this task you will need to implement the function cartesianToPolar(_:) that takes in a tuple, (x: Double, y: Double), and return a new tuple, (r: Double, phi: Double), where:

r = √(x2 + y2)
phi = atan2(y, x)
 */

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
    let (x,y) = cart
    
    return (r: (x * x + y * y).squareRoot(), phi: atan2(y, x))
}


/*
 For your second task, your boss is upgrading its database and is modifying its record structures. They want to combine the records from the toy production database and the toy recipient databases to save space and give the product leads better visibility into the demand for their toy.

 For this task you will implement the function combineRecords(production:gifts:) that takes two tuples as input, production: (toy: String, id: Int, productLead: String) and gifts: (Int, [String]) and your function will return a combined tuple, (id: Int, toy: String, productLead: String, recipients: [String]). Note that the two id fields in the input tuples are guaranteed to be the same value.
 */

func combineRecords(
    production: (toy: String, id: Int, productLead: String),
    gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
    let (toy, id, productLead) = production
    let (_, recipients) = gifts
    return (id: id, toy: toy, productLead: productLead, recipients: recipients)
}


