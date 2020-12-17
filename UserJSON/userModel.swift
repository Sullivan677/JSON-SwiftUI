import SwiftUI

struct User: Codable, Identifiable {
    let id = UUID()
    let username: String
    let name: String
}
