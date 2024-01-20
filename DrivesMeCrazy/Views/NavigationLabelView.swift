import SwiftUI

struct NavigationLabelView: View {
    let dog: Dog

    init(for dog: Dog) {
        self.dog = dog
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(dog.name)
                .font(.headline)
            Text(dog.breed)
                .font(.subheadline)
        }
    }
}

#Preview {
    NavigationLabelView(for: Dog.preview)
}
