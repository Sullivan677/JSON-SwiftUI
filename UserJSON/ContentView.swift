import SwiftUI
struct ContentView: View {
    
    @State var users: [User] = []

    var body: some View {
        List(users) { user in
          
                Text(user.username)
                    .font(.headline)
                Text(user.name)
                    .font(.subheadline)
        }
            .onAppear {
                apiCall().getUsers { (users) in
                    self.users = users
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
