import Foundation

class CocktailsListViewModel: ObservableObject {
    @Published var cocktails: [Cocktail] = [
        Cocktail(id: 1, name: "Margarita"),
        Cocktail(id: 2, name: "Gin Tonic"),
        Cocktail(id: 3, name: "Cuba Libre")
    ]

    init() { }
}
