import Foundation
import Alamofire

class Communicator: CommunicatorProtocol {

    private let apiUrl = "https://thecocktaildb.com/api/json/v1/1"

    func getDrinks() async -> DrinksDto? {
        await withCheckedContinuation { cont in
            let endpoint = "\(apiUrl)/filter.php?a=Alcoholic"
            AF.request(endpoint, method: .get).responseDecodable(of: DrinksDto.self) { response in
                cont.resume(returning: response.value)
            }
        }
    }

    func getDrink(_ id: String) async -> FullDrinkDto? {
        await withCheckedContinuation { cont in
            let endpoint = "\(apiUrl)/lookup.php?i=\(id)"
            AF.request(endpoint, method: .get).responseDecodable(of: FullDrinkDto.self) { response in
                cont.resume(returning: response.value)
            }
        }
    }
}
