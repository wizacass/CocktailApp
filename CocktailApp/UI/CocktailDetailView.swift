import SwiftUI

struct CocktailDetailView: View {
    var viewModel: CocktailDetailViewModel

    var body: some View {
        NavigationView {
            Text("Cocktail Info")
        }
        .navigationTitle(viewModel.name)
    }
}

struct CocktailDetailView_Previews: PreviewProvider {
    private static var viewModel = CocktailDetailViewModel("Cuba Libre")

    static var previews: some View {
        CocktailDetailView(viewModel: viewModel)
    }
}
