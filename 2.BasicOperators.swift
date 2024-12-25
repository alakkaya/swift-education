//2.Basic Operators
let freePackagePrice: Double = 0
let basicPackagePrice: Double = 9.99
let proPackagePrice: Double = 19.99
let discountForProPackage: Double = 0.2

func calculateTotalPrice(packageType: String = "free") -> Double {
    var totalPrice: Double = 0
    switch packageType {
    case "free":
        totalPrice = freePackagePrice
    case "basic":
        totalPrice = basicPackagePrice
    case "pro":
        totalPrice = proPackagePrice
        totalPrice -= totalPrice * discountForProPackage
    default:
        print("Invalid package type.")
    }
    return totalPrice
}

// print("Total price for free package: \(calculateTotalPrice(packageType: "free"))")
// print("Total price for free package: \(calculateTotalPrice(packageType: "basic"))")
// print("Total price for free package: \(calculateTotalPrice(packageType: "pro"))")
