import Foundation

public struct DrinksDto: Codable {
    let drinks: [DrinkDto]

    public init(drinks: [DrinkDto]) {
        self.drinks = drinks
    }
}
