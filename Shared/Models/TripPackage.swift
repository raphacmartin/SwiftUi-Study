import Foundation

struct TripPackage: Codable, Identifiable {

    enum CodingKeys: String, CodingKey {
       case id, title = "titulo", value = "valor", continent = "categoria", description = "descricao", details = "detalhes", date = "data", images = "imagens", includingItems = "itensInclusos"
    }

    var id: Int
    var title: String
    var value: String
    var continent: Continent
    var description: String
    var details: String
    var date: String
    var images: [String]
    var includingItems: [Item]

    enum Continent: String, CaseIterable, Codable, Hashable, Identifiable {
        var id: Continent { self }
        
        case europa = "Europa"
        case southAmerica = "America do sul"
        case northAmerica = "America do norte"
    }
}

struct Item: Codable {

    enum CodingKeys: String, CodingKey {
       case id, title = "titulo", image = "imagem"
    }

    var id: Int
    var title: String
    var image: String
}
