import SwiftUI

struct DetailView: View {
    let dog: Dog

    init(for dog: Dog) {
        self.dog = dog
    }

    var body: some View {
        Text(dog.name)
            .font(.headline)
    }
}
#Preview {
    DetailView(for: Dog.preview)
}
