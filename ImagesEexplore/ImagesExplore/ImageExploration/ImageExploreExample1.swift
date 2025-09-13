//
//  Image Explore.swift
//  ImagesEexplore
//
//  Created by Jesús Ervin Chapi Suyo on 2/05/25.
//

import SwiftUI

struct ImageExploreExample1: View {
    @State var scaleToFit: Bool = true
    var body: some View {
        if scaleToFit {
            Image(clientSay1)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
                .onTapGesture {
                    scaleToFit.toggle()
                }
        }else {
            Image(clientSay1)
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.25)
                .scaledToFill()
                .cornerRadius(20)
                .padding()
                .onTapGesture {
                    scaleToFit.toggle()
                }
        }
    }
}
struct ImageExploreExample1_Previews: PreviewProvider  {
    static var previews : some View {
        ImageExploreExample1()
    }
}
 
