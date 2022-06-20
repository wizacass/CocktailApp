import SwiftUI

@main
struct CocktailAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CocktailsListView(viewModel: CocktailsListViewModel())
        }
    }
}
