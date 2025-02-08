//
//  BlendedCircleView.swift
//  BlurEffects
//
//  Created by Jesús Ervin Chapi Suyo on 7/02/25.
//

import SwiftUI

struct BlendedCircleView: View {
    let color: Color;
    let CircleRadius: Double;
    let offsetX: Double;
    let offsetY: Double;
    let blur: Double;
    let blendMode: BlendMode;
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: CircleRadius, height: CircleRadius)
            .offset(x: offsetX, y: offsetY)
            .blur(radius: blur)
    }
}

#Preview {
    BlendedCircleView(
        color: .blue,
        CircleRadius: 50,
        offsetX: 100,
        offsetY: -100,
        blur: 10,
        blendMode: .normal
    )
}
