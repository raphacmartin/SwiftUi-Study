import Foundation
import MapKit

struct Trip: Hashable, Codable, Identifiable {
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
