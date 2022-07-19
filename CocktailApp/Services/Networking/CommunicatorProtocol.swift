import Foundation

public protocol CommunicatorProtocol {
    func getDrinks() async -> DrinksDto?

    func getDrink(_ id: String) async -> FullDrinkDto?
}
