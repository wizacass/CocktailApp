import Foundation
import CocktailApp

class CommunicatorMock: CommunicatorProtocol {

    let drinks = DrinksDto(drinks: [
        DrinkDto(strDrink: "Cuba Libre", strDrinkThumb: "", idDrink: "1"),
        DrinkDto(strDrink: "Gin Tonic", strDrinkThumb: "", idDrink: "2"),
        DrinkDto(strDrink: "Screwdriver", strDrinkThumb: "", idDrink: "3"),
    ])

    func getDrinks() async -> DrinksDto? {
        return drinks
    }
}
