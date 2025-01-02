//
//  ContentView.swift
//  ExploreGrids
//
//  Created by Jesús Ervin Chapi Suyo on 28/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.7)
                .ignoresSafeArea()
            Grid {
                GridRow {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                        .gridCellColumns(2)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                    
                }
                GridRow {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.red)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.green)
                        .gridCellColumns(2)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.black)
                }
                GridRow {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.red)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.green)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.green)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.green)
                  
                }
            }
            .padding()
            
        }
        
    }
}

#Preview {
    ContentView(	)
}

