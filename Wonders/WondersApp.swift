import SwiftUI

@main
struct WondersApp: App {

    @State private var vm = LocationsViewModel()

    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }

}
