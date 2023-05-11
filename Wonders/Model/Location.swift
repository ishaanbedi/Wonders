import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    
    let id: String = UUID().uuidString
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let descriptionText: String
    let imageNames: [String]
    let link: String

    static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.id == rhs.id
    }

}
