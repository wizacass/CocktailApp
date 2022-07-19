import Foundation

class CocktailDetailViewModel: ObservableObject {
    @Published var cocktail: [String: String?] = [:]

    var name: String
    var id: String

    private let communicator: CommunicatorProtocol

    init(_ communicator: Communicator, _ id: String, _ name: String) {
        self.communicator = communicator

        self.name = name
        self.id = id
    }

    init(_ communicator: Communicator, _ cocktail: Cocktail) {
        self.communicator = communicator

        name = cocktail.name
        id = cocktail.id
    }

    @MainActor
    func retrieveCocktail() async {
        guard let drinks = await communicator.getDrink(id)?.drinks else { return }

        // TODO: - Proper transfrom (Adapter)
        let a = await communicator.getDrink(id)
        let x = drinks
        cocktail = drinks[0]

        print(cocktail["strDrink"])
    }
}
