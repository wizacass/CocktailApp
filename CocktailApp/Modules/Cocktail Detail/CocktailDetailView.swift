import SwiftUI

struct CocktailDetailView: View {
    @ObservedObject var viewModel: CocktailDetailViewModel

    var body: some View {
        NavigationView {
            VStack {
                Text(viewModel.name)
                    .lineLimit(nil)
                    .font(.title)

                Spacer(minLength: 32)

                VStack {
                    Text("Instructions").bold()
                    Spacer()
                        .frame(height: 32)
                    Text((viewModel.cocktail["strInstructions"] ?? "No instructions provided!") ?? "Loading...")
                        .lineLimit(nil)
                    Spacer()
                }

                Spacer()
            }.padding(24)
        }
        .task {
            await viewModel.retrieveCocktail()
        }
    }
}

struct CocktailDetailView_Previews: PreviewProvider {
    private static var viewModel = CocktailDetailViewModel(Communicator(), "1", "Cuba Libre")

    static var previews: some View {
        CocktailDetailView(viewModel: viewModel)
    }
}
