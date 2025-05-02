//
//  ColorCircle.swift
//  StructVsClass
//
//  Created by Jesús Ervin Chapi Suyo on 4/04/25.
//
import SwiftUI
struct ColorCircle: View {
    
    let color: Color
    let isSelected: Bool
    
    let selectedDim = 30.0
    let noSelectedDim = 20.0
    
    var dim: CGFloat {
        isSelected ? selectedDim : noSelectedDim
    }
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: dim, height: dim)
    }
}

#Preview {
    VStack
    {
        ColorCircle(color: .red, isSelected: true)
        ColorCircle(color: .blue, isSelected: false)
    }
  
}
