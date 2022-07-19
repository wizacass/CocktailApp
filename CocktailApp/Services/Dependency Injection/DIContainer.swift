import Foundation

class DIContainer: ObservableObject {

    @Published var communicator: Communicator
    @Published var cocktailListViewModel: CocktailsListViewModel

    init(
        _ communicator: Communicator,
        _ cocktailListViewModel: CocktailsListViewModel
    ) {
        self.communicator = communicator
        self.cocktailListViewModel = cocktailListViewModel
    }
}
