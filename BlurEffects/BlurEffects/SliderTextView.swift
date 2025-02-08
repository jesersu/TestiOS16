//
//  SilderTextView.swift
//  BlurEffects
//
//  Created by Jesús Ervin Chapi Suyo on 7/02/25.
//

import SwiftUI

struct SliderTextView: View {
    @Binding var value: Double;
    let text: String;
    let min: Double;
    let max: Double;
    let color: Color;
    
    var body: some View {
        Text("\(text.capitalized): \(value.formatted())")
            .fontWeight(.semibold)
            .font(.headline)
        
        Slider(value: $value, in: min...max, step: 1)
    }
}

#Preview {
    SliderTextView(
        value: .constant(15),
        text: "Red Blur Effect",
        min: 0,
        max: 50,
        color: .red
    )
}
