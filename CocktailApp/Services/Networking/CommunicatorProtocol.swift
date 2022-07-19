import Foundation

public protocol CommunicatorProtocol {
    func getDrinks() async -> DrinksDto?
}
