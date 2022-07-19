import Foundation

class Bootstrapper {

    init() { }
    
    func createContainer() -> DIContainer {
        let communicator = Communicator()

        let cocktailsListViewModel = CocktailsListViewModel(communicator)

        return DIContainer(cocktailsListViewModel)
    }
}
