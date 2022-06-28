import SwiftUI

@main
struct CocktailAppApp: App {
   // let persistenceController = PersistenceController.shared

    @StateObject var c: DIContainer = Bootstrapper().createContainer()

    var body: some Scene {
        WindowGroup {
            CocktailsListView(viewModel: c.cocktailListViewModel).environmentObject(c)
        }
    }
}
