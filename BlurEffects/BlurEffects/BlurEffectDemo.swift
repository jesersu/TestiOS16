//
//  ContentView.swift
//  BlurEffects
//
//  Created by Jesús Ervin Chapi Suyo on 6/02/25.
//

import SwiftUI

struct BlurEffectDemo: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    BlurEffectDemo()
}
