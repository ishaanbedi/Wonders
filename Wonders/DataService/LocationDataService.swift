import Foundation
import MapKit

class LocationsDataService {
    static var locations: [Location] = [
        Location(
            name: "Chichen Itza",
            cityName: "Mexico",
            coordinates: CLLocationCoordinate2D(latitude: 20.6843, longitude: -88.5678),
            descriptionText: "Chichen Itza is a complex of Mayan ruins on Mexico's Yucatán Peninsula. A massive step pyramid, known as El Castillo or Temple of Kukulcan, dominates the ancient city, which thrived from around 600 A.D. to the 1200s.",
            imageNames: ["chichen-1", "chichen-2", "chichen-3"],
            link: "https://en.wikipedia.org/wiki/Chichen_Itza"
        ),
        Location(
            name: "Christ the Redeemer",
            cityName: "Brazil",
            coordinates: CLLocationCoordinate2D(latitude: -22.9519, longitude: -43.2106),
            descriptionText: "Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by Brazilian engineer Heitor da Silva Costa, in collaboration with French engineer Albert Caquot.",
            imageNames: ["christ-1", "christ-2", "christ-3"],
            link: "https://en.wikipedia.org/wiki/Christ_the_Redeemer_(statue)"
        ),
        Location(
            name: "Colosseum",
            cityName: "Italy",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            descriptionText: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: ["colosseum-1", "colosseum-2", "colosseum-3"],
            link: "https://en.wikipedia.org/wiki/Colosseum"
        ),
        Location(
            name: "Great Wall of China",
            cityName: "China",
            coordinates: CLLocationCoordinate2D(latitude: 40.4319, longitude: 116.5704),
            descriptionText: "The Great Wall of China is a series of fortifications made of stone, brick, tamped earth, wood, and other materials, generally built along an east-to-west line across the historical northern borders of China to protect the Chinese states and empires against the raids and invasions of the various nomadic groups of the Eurasian Steppe.",
            imageNames: ["great-wall-1", "great-wall-2", "great-wall-3"],
            link: "https://en.wikipedia.org/wiki/Great_Wall_of_China"
        ),
        Location(
            name: "Machu Picchu",
            cityName: "Peru",
            coordinates: CLLocationCoordinate2D(latitude: -13.1631, longitude: -72.5450),
            descriptionText: "Machu Picchu is a 15th-century Inca citadel, located in the Eastern Cordillera of southern Peru, on a 2,430-metre (7,970 ft) mountain ridge. It is located in the Cusco Region, Urubamba Province, Machupicchu District, above the Sacred Valley, which is 80 kilometres (50 mi) northwest of Cuzco and through which the Urubamba River flows.",
            imageNames: ["machu-1", "machu-2", "machu-3"],
            link: "https://en.wikipedia.org/wiki/Machu_Picchu"
        ),
        Location(
            name: "Petra",
            cityName: "Jordan",
            coordinates: CLLocationCoordinate2D(latitude: 30.3285, longitude: 35.4444),
            descriptionText: "Petra is a historical and archaeological city in southern Jordan. Petra lies around Jabal Al-Madbah in a basin surrounded by mountains which form the eastern flank of the Arabah valley that runs from the Dead Sea to the Gulf of Aqaba.",
            imageNames: ["petra-1", "petra-2", "petra-3"],
            link: "https://en.wikipedia.org/wiki/Petra"
        ),
        Location(
            name: "Taj Mahal",
            cityName: "India",
            coordinates: CLLocationCoordinate2D(latitude: 27.1750, longitude: 78.0422),
            descriptionText: "The Taj Mahal is an ivory-white marble mausoleum on the right bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan, to house the tomb of his favourite wife, Mumtaz Mahal.",
            imageNames: ["taj-1", "taj-2", "taj-3"],
            link: "https://en.wikipedia.org/wiki/Taj_Mahal"
        )
    ]
}
