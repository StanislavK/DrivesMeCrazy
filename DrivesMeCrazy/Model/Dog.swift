import Foundation

struct Dog: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let breed: String
}
