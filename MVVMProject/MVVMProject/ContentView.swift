//
//  ContentView.swift
//  MVVMProject
//
//  Created by Jesús Ervin Chapi Suyo on 24/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            EmployeeListView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
