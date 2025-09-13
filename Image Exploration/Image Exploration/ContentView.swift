//
//  ContentView.swift
//  Image Exploration
//
//  Created by Jesús Ervin Chapi Suyo on 10/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Click Me") { }
                .buttonStyle(MarvelButtonStyle())
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
