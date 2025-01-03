//
//  GridBasics2.swift
//  ExploreGrids
//
//  Created by Jesús Ervin Chapi Suyo on 2/01/25.
//

import Foundation
import SwiftUI

struct GridBasics2: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.7)
                .ignoresSafeArea()
            Grid{
                GridRow{
                    React(
                        color: .red,
                        count: 2,
                        total: 5
                    )
                    React(
                        color: .blue,
                        count: 1,
                        total: 5
                    )
                    
                }
                GridRow{
                    React(
                        color: .green,
                        count: 1,
                        total: 5
                    )
                    React(
                        color: .yellow,
                        count: 1,
                        total: 5
                    )
                    React(
                        color: .blue,
                        count: 1,
                        total: 5
                    )
                    
                }
            }
            .padding()
       
        }
        
    }
}

struct React: View {
    let color : Color
    let count : Int
    let total : Int
    
    var text : String {
        " \(count) out of \(total)"
    }
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(color.opacity(20))
            .overlay{
                Text(text)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            .gridCellColumns(count)
    }
}

#Preview {
    GridBasics2()
}

