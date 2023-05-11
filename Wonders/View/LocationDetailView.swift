import SwiftUI
import MapKit

struct LocationDetailView: View {
    let location: Location
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                TabView {
                    ForEach(location.imageNames, id: \.self) {
                        Image($0)
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                            .clipped()
                    }
                }
                    .frame(height: 500)
                    .tabViewStyle(PageTabViewStyle())
                    .ignoresSafeArea(.all)
                VStack(alignment: .leading) {
                    Text(location.name)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    Text(location.cityName)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all)
                Divider()
                    .padding(.horizontal)
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text(location.descriptionText)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                        .frame(maxWidth: .infinity, alignment: .leading)

                    if let url = URL(string: location.link) {
                        Link("Read More on WikiPedia", destination: url)
                            .padding(.vertical)
                            .font(.headline)
                    }
                }
                    .padding(.all)
                Map(coordinateRegion: .constant(MKCoordinateRegion(
                    center: location.coordinates,
                    span: MKCoordinateSpan(latitudeDelta: 0.0075, longitudeDelta: 0.0075))),
                    annotationItems: [location]) { location in
                    MapAnnotation (coordinate: location.coordinates) {
                        LocationMapAnnotationView()
                            .shadow (radius: 10)
                    }
                }
                    .allowsHitTesting(false)
                    .aspectRatio(1, contentMode: .fit)
                    .cornerRadius(30)
                    .padding(.all)
            }
        }
            .background(.ultraThinMaterial)
            .ignoresSafeArea(.all)
            .overlay(alignment: .topLeading) {
            Button {
                vm.sheetLocation = nil
            } label: {
                Image(systemName: "xmark")
                    .font(.headline)
                    .padding(.all)
                    .foregroundColor(.primary)
                    .background(.thickMaterial)
                    .cornerRadius(10)
                    .shadow(radius: 6)
                    .padding(.all)
            }

        }
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())

    }
}
