// The Swift Programming Language

// 1.The Basics
let totalBudget: Int = 100
var currentBalance: Int = totalBudget

@MainActor
func makePurchase(itemPrice: Int) -> Int {
    if currentBalance > itemPrice {
        currentBalance -= itemPrice
        print(
            "Purchase successful! You bought an item for \(itemPrice). Your current balance is \(currentBalance)."
        )
    } else {
        print("Insufficient funds. You cannot afford this item.")
    }
    return currentBalance
}

makePurchase(itemPrice: 10)
makePurchase(itemPrice: 20)
makePurchase(itemPrice: 80)
