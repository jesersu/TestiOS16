//
//  ContentView.swift
//  BuyNowView
//
//  Created by Jesús Ervin Chapi Suyo on 8/02/25.
//

import SwiftUI

struct ContentView: View {
    let price: Double
    let discontPercentage: Int?
    var discountedPrice: Double? {
        if let discontPercentage = discontPercentage {
            return price - (price * Double(discontPercentage) / 100)
        }else{
            return nil
        }
    }
    //View
    let discountColor: Color
    let bgColor: Color
    let yOffSet: Double
    let discountAngle: Double
    
    init(
        price: Double,
        discontPercentage: Int?,
        discountColor: Color = .blue,
        bgColor: Color = .red,
        yOffSet: Double = -20,
        discountAngle: Double = -10
    ) {
        self.price = price
        self.discontPercentage = discontPercentage
        self.discountColor = discountColor
        self.bgColor = bgColor
        self.yOffSet = yOffSet
        self.discountAngle = discountAngle
    }
    
    var body: some View {
        VStack{
            if let discontPercentage  {
                Text("\(discontPercentage)% OFF")
                    .foregroundStyle(.white)
                    .font(.title)
                    .padding()
                    .background(discountColor)
                    .clipShape(.rect(cornerRadius: 15))
                    .rotationEffect(Angle(degrees: discountAngle))
                    .offset(y: yOffSet)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            HStack{
                Text("BUY NOW!")
                    .font(.title)
                    .bold()
                Spacer()
                Text("$\(price, specifier: "%.2f")")
                    .strikethrough(discountedPrice != nil)
                    .foregroundStyle(.white)
                if let discountedPrice {
                    Text("$\(discountedPrice, specifier: "%.2f")")
                        .font(.title)
                        .fontWeight(.semibold)
                        
                }
            
            }
           
        }
        .padding()
        .background(
            ZStack{
                RoundedRectangle(
                    cornerRadius: 10
                ).fill(Color.green)
                
                RoundedRectangle(
                    cornerRadius: 10
                ).stroke(Color.white, lineWidth: 2)
            }
        )
        .padding()
    }
}

#Preview {
    ZStack{
        Color
            .black
            .opacity(0.5)
            .ignoresSafeArea()
        VStack {
            ContentView(price: 10.0, discontPercentage: 12)
            ContentView(price: 10.0, discontPercentage: nil)
        }
    }
    
}
