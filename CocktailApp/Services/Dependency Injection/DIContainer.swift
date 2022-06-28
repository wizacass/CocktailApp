import Foundation

class DIContainer: ObservableObject {

    @Published var cocktailListViewModel: CocktailsListViewModel

    init(_ cocktailListViewModel: CocktailsListViewModel) {
        self.cocktailListViewModel = cocktailListViewModel
    }
}
