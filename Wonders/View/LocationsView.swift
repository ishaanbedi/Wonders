import SwiftUI
import MapKit
struct LocationsView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    @State private var showDetails: Bool = false
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion, annotationItems: vm.locations, annotationContent: { location in
                MapAnnotation(coordinate: location.coordinates) {
                    LocationMapAnnotationView()
                        .scaleEffect(vm.mapLocation == location ? 1 : 0.5)
                        .shadow(radius: 10)
                        .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
                }
            })
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    Button {
                        toggleList()
                    } label: {
                        Text("\(vm.mapLocation.name), \(vm.mapLocation.cityName)")
                            .foregroundColor(.primary)
                            .font(.title2)
                            .bold()
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .overlay(alignment: .leading) {
                            Image(systemName: "arrow.down")
                                .font(.headline)
                                .foregroundColor(.primary)
                                .padding(.all)
                                .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                        }
                    }
                    if (vm.showLocationsList) {
                        LocationsListView()
                    }
                }
                    .background(.ultraThinMaterial)
                    .cornerRadius(12)
                    .shadow(radius: 10)
                    .padding(.all)
                    .frame(maxWidth: 700)
                Spacer()
                ZStack {
                    ForEach(vm.locations) { locationGot in
                        if vm.mapLocation == locationGot {
                            LocationPreviewView(location: locationGot)
                                .shadow(color: .black.opacity(0.3), radius: 10)
                                .padding(.all)
                                .frame(maxWidth: 700)
                                .frame(maxWidth: .infinity)
                                .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                        }
                    }

                }
            }
        }
            .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
    func toggleList() {
        withAnimation(.easeInOut) {
            vm.showLocationsList = !vm.showLocationsList
        }
    }
}
struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}

