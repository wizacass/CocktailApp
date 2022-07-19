import SwiftUI

struct CocktailRowView: View {
    var viewModel: CocktailRowViewModel

    var body: some View {
        HStack {
            Image(systemName: "drop.circle")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(viewModel.name)
        }
    }
}

struct CocktailRowView_Previews: PreviewProvider {
    private static var viewModel = CocktailRowViewModel("Cuba Libre")

    static var previews: some View {
        CocktailRowView(viewModel: viewModel)
            .previewLayout(.fixed(width: 196.0, height: 48.0))
    }
}
