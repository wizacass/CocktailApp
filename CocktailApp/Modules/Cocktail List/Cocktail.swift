import Foundation

struct Cocktail: Identifiable {
    let id: String
    let name: String

    init(_ drink: DrinkDto) {
        id = drink.idDrink
        name = drink.strDrink
    }
}
