//
//  ContentView.swift
//  StructVsClass
//
//  Created by Jesús Ervin Chapi Suyo on 2/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var color1: Color = .red
    @State private var color2: Color = .green
    @State private var color3: Color = .blue
    var body: some View {
        ZStack {
            Color.green
                .opacity(0.2)
                .ignoresSafeArea()
            VStack {
                HStack{
                    RectangleView(color: color1)
                    RectangleView(color: color2)
                    RectangleView(color: color3)
                }
                ColorPicker("Color 1", selection: $color1)
                ColorPicker("Color 2", selection: $color2)
                ColorPicker("Color 3", selection: $color3)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
