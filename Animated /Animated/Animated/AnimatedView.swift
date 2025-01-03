//
//  ContentView.swift
//  Animated
//
//  Created by Jesús Ervin Chapi Suyo on 2/01/25.
//

import SwiftUI

struct AnimatedView: View {
   
    var offset : CGSize {
        CGSize(width: 0, height: togglePosition ? 400 : 0)
    }
    
    @State private var togglePosition: Bool = false
    var color : Color {
        togglePosition ? Color.red : Color.blue
    }
    
    var font : Font {
        togglePosition ? .headline : .title
    }
    
    var rotate: CGFloat {
        togglePosition ? 360 : 0
    }
    
    var bgColor : Color {
        togglePosition ? Color.black : Color.gray
    }
    
    var text : String {
        togglePosition ? "Animated" : "Not Animated"
    }
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            VStack {
                
                Text(text)
                    .font(font)
                    .fontWeight(.semibold)
                    .rotationEffect(Angle(degrees: rotate))
                    .offset(offset)
                    .foregroundStyle(color)
          
     
        
                Spacer()
                
                Button{
                    withAnimation(.spring(response: 0.55, dampingFraction: 0.825, blendDuration: 0)){
                        togglePosition.toggle()
                    }
                }
                label: {
                    Text("Animate")
                        .font(.title)
                        .fontWeight(.semibold)
                        
                }.buttonStyle(.borderedProminent)
            }
        }
        
    }
}

#Preview {
    AnimatedView()
}
