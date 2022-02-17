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
    guard index >= 0, index < stack.count else { return stack }
    var result = stack
    result.replaceSubrange(index..<index + 1, with: [newCard])
    return result
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
    guard index >= 0, index < stack.count else { return stack }
    var result = stack
    result.remove(at: index)
    return result
}

/*
 Implement the function removeTopCard(_:) that returns a copy of the stack which has had the card at the top of the stack removed. If the given stack is empty, the original stack should be returned, unchanged.
 */

func removeTopCard(_ stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.removeLast()
    return newStack
}

/*
 Implement the function insert(_:atBottomOf:) that returns a copy of the stack with the new card provided added to the bottom of the stack.
 */

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.insert(newCard, at: 0)
    return newStack
}

/*
 Implement the function removeBottomCard(_:) that returns a copy of the stack which has had the card at the bottom of the stack removed. If the given stack is empty, the original stack should be returned, unchanged.
 */

func removeBottomCard(_ stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.removeFirst()
    return newStack
}

/*
Implement the function checkSizeOfStack(_:_:) that checks whether the size of the stack is equal a given stackSize or not.
*/

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    stack.count == size
}

/*
 Implement the function evenCardCount(_:) that steps through the stack and count the number of even cards in it.
 */

func evenCardCount(_ stack: [Int]) -> Int {
    var count = 0
    for i in stack {
        if i.isMultiple(of: 2) {
            count += 1
        }
    }
    return count
}
