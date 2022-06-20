import Foundation

class CocktailRowViewModel {
    let name: String

    init(_ name: String) {
        self.name = name
    }

    init(_ cocktail: Cocktail) {
        name = cocktail.name
    }
}
