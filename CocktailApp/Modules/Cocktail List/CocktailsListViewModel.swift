import Foundation

class CocktailsListViewModel: ObservableObject {
    @Published var cocktails: [Cocktail] = []

    private let communicator: CommunicatorProtocol

    init(_ communicator: CommunicatorProtocol) {
        self.communicator = communicator
    }

    @MainActor
    func retrieveCocktails() async {
        let drinks = await communicator.getDrinks()
        
        cocktails = transformDrinks(drinks)
    }

    private func transformDrinks(_ drinks: DrinksDto?) -> [Cocktail] {
        return drinks?.drinks.compactMap { (drink) -> Cocktail? in
            return Cocktail(drink)
        } ?? []
    }
}
