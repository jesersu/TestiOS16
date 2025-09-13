//
//  ContentView.swift
//  BlurEffects
//
//  Created by Jesús Ervin Chapi Suyo on 6/02/25.
//

import SwiftUI

struct BlurEffectDemo: View {
    @State private var mainBlurRadius: Double = 10.0
    @State private var redBlurRadius: Double = 10.0
    @State private var blueBlurRadius: Double = 10.0
    
    let blendModes: [BlendMode] = [ .plusLighter, .softLight, .normal]
    
    @State private var blendModeIndex = 0
    var blendMode: BlendMode {
        blendModes[blendModeIndex]
    }
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(
                    colors: [.red, .blue, .purple, .orange],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .blur(radius: mainBlurRadius)
                
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .clipShape(.rect(cornerRadius: 30))
                    .overlay{
                        Text("Cool Blur Effects")
                            .font(.largeTitle)
                            .bold()
                            .foregroundStyle(.white)
                            .padding()
                    }.padding()
                
                BlendedCircleView(
                    color: .red,
                    CircleRadius: 200,
                    offsetX: -100,
                    offsetY: 100,
                    blur: redBlurRadius,
                    blendMode: blendMode
                )
                
                BlendedCircleView(
                    color: .yellow,
                    CircleRadius: 100,
                    offsetX: 100,
                    offsetY: -80,
                    blur: blueBlurRadius,
                    blendMode: blendMode
                )
                    
            }
            
          
            
            //Sliders
            VStack{
                SliderTextView(
                    value: $mainBlurRadius,
                    text: "Main Blur Radius",
                    min: 0,
                    max: 30,
                    color: .purple
                )
                SliderTextView(
                    value: $redBlurRadius,
                    text: "Red Blur Radius",
                    min: 0,
                    max: 75,
                    color: .red
                )
                SliderTextView(
                    value: $blueBlurRadius,
                    text: "Blue Blur Radius",
                    min: 0,
                    max: 50,
                    color: .yellow
                )
            }
            
           
            
        }
        .padding()
        .onTapGesture {
            blendModeIndex = (blendModeIndex + 1) % blendModes.count
        }
        
    }
}

#Preview {
    BlurEffectDemo()
}
