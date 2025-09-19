//
//  ContentView.swift
//  TestHashable
//
//  Created by Jesús Ervin Chapi Suyo on 14/09/25.
//

import SwiftUI

struct ContentView: View {
    @State var conunt = 0
    
    let user = [ User(id: 1, age: 22, name: "Ervin"),
                 User(id: 2, age: 30, name: "jesus")]
    
    var usus: Set<User> = [ User(id: 1, age: 22, name: "Ervin"),
                    User(id: 2, age: 30, name: "jesus")]
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Click Me \(conunt)") {
                conunt += 1
            }
            List{
                ForEach(user) { user in
                    Text(user.name)
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
