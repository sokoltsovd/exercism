import UIKit

/*
 Implement the function getCard(at:from:) that returns the card at position index from the given stack.
 */

func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

/*
 Implement the function setCard(at:in:to) that returns a new stack that is a copy of the input stack but which has the card at position index changed to the new card provided. If the given index is not a valid index in the stack, the original stack should be returned, unchanged.
 */

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    var newStack = stack
    newStack[index] = newCard
    return newStack
}

/*
 Implement the function insert(_:atTopOf:) that returns a copy of the stack with the new card provided added to the top of the stack.
 */

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.append(newCard)
    return newStack
}

/*
 Implement the function removeCard(at:from:) that returns a copy of the stack which has had the card at position index removed. If the given index is not a valid index in the stack, the original stack should be returned, unchanged.
 */

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.remove(at: index)
    return newStack
}

/*
 Implement the function removeTopCard(_:) that returns a copy of the stack which has had the card at the top of the stack removed. If the given stack is empty, the original stack should be returned, unchanged.
 */

func removeTopCard(_ stack: [Int]) -> [Int] {
  fatalError("Please implement the removeTopCard(_) function")
}
