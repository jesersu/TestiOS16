//
//  RectangleView.swift
//  StructVsClass
//
//  Created by Jesús Ervin Chapi Suyo on 4/04/25.
//
import SwiftUI
import Foundation

struct RectangleView: View {
    let dim: CGFloat
    let color: Color
    
    init(dim: CGFloat = 50, color: Color) {
        self.dim = dim
        self.color = color
    }
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(color)
            .frame(width: dim, height: dim)
        
    }
}

#Preview{
    RectangleView(color: .blue)
}
