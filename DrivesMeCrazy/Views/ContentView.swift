import SwiftUI

struct ContentView: View {
    @State private var viewModel = ViewModel()

    var body: some View {
        List(viewModel.dogs) { dog in
            NavigationLink(value: dog) {
                NavigationLabelView(for: dog)
            }
        }
        .listRowSpacing(4)
        .navigationTitle("Dogs")
        .navigationDestination(for: Dog.self) { dog in
            DetailView(for: dog)
        }
        .task { try? await viewModel.fetchDogs() }
        .refreshable { try? await viewModel.fetchDogs() }
    }
}

extension ContentView {
    @Observable
    class ViewModel {
        private(set) var dogs: [Dog] = []

        @MainActor
        func fetchDogs() async throws {
            // Have some dogs now!
            dogs = Dog.previews
        }
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
