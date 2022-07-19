import SwiftUI

struct CocktailsListView: View {

    @EnvironmentObject var c: DIContainer
    @ObservedObject var viewModel: CocktailsListViewModel

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.cocktails) { cocktail in
                    NavigationLink(destination: CocktailDetailView(
                        viewModel: CocktailDetailViewModel(c.communicator, cocktail)
                    )) {
                        CocktailRowView(
                            viewModel: CocktailRowViewModel(cocktail)
                        )
                    }
                }
            }
            .navigationTitle("Cocktails")
            .task {
                await viewModel.retrieveCocktails()
            }
        }
    }
}

struct CocktailsListView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailsListView(viewModel: CocktailsListViewModel(Communicator()))
    }
}
