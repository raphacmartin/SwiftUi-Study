import Foundation
import MapKit

struct Trip: Hashable, Codable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case id, title = "titulo", image = "imagem", numberOfDays = "quantidadeDeDias", value = "valor", coordinates = "coordenada"
    }
    
    var id: Int
    var title: String
    var image: String
    var numberOfDays: String
    var value: String
    var coordinates: Coordinate
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

struct Coordinate: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
