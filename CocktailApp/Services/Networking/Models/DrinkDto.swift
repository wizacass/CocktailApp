import Foundation

public struct DrinkDto: Codable {
    let strDrink: String
    let strDrinkThumb: String
    let idDrink: String

    public init(strDrink: String, strDrinkThumb: String, idDrink: String) {
        self.strDrink = strDrink
        self.strDrinkThumb = strDrinkThumb
        self.idDrink = idDrink
    }
}
