import Foundation

class CocktailsListViewModel: ObservableObject {
    @Published var cocktails: [Cocktail] = []

    init() { }

    @MainActor
    func retrieveCocktails() async {
        let communicator = Communicator()

        let drinks = await communicator.getDrinks()
        cocktails = transformDrinks(drinks)
    }

    private func transformDrinks(_ drinks: DrinksDto?) -> [Cocktail] {
        return drinks?.drinks.compactMap { (drink) -> Cocktail? in
            return Cocktail(drink)
        } ?? []
    }
}
