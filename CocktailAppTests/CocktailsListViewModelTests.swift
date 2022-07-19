import XCTest
@testable import CocktailApp

class CocktailsListViewModelTests: XCTestCase {

    private var communicator: CommunicatorProtocol?
    private var viewModel: CocktailsListViewModel?

    override func setUp() {
        communicator = CommunicatorMock()
        viewModel = CocktailsListViewModel(communicator!)
    }

    func testRetrieveCocktails() async {
        let expectedCount = await communicator?.getDrinks()?.drinks.count

        await viewModel?.retrieveCocktails()

        XCTAssertEqual(viewModel?.cocktails.count, expectedCount)
    }
}
