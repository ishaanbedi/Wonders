import SwiftUI
struct LocationPreviewView: View {
    let location: Location
    @EnvironmentObject private var vm: LocationsViewModel
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                ZStack {
                    if let imageName = location.imageNames.first {
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                            .onTapGesture {
                            vm.sheetLocation = location
                        }
                        Spacer()
                    }
                }
                    .padding(5)
                    .background(.white)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Text(location.name)
                        .font(.title2)
                        .bold()
                    Text(location.cityName)
                        .font(.subheadline)
                }
            }
            Spacer()
            VStack {
                Button {
                    vm.sheetLocation = location
                } label: {
                    Text("Learn More")
                        .font(.headline)
                        .frame(width: 125, height: 35)
                }
                    .buttonStyle(.borderedProminent)
                Button {
                    vm.nextButtonPressed()
                } label: {
                    Text("Next")
                        .font(.headline)
                        .frame(width: 125, height: 35)
                }
                    .buttonStyle(.bordered)
            }
                .padding(.top, 70)
        }
            .frame(maxWidth: .infinity)
            .padding(.all)
            .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
            .clipped()
            .cornerRadius(10)
    }
}
struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
