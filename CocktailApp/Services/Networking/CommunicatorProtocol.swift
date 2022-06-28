import Foundation

protocol CommunicatorProtocol {
    func getDrinks() async -> DrinksDto?
}
