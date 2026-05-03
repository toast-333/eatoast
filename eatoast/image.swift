//
//  image.swift
//  eatoast
//
//  Created by 114-2Workshop13 on 2026/5/3.
//

import SwiftUI

struct image: View {
    let photo = ["food1","food2","food3"]
    
    var body: some View{
        ZStack{
            Color.black
                .ignoresSafeArea()
            TabView{
                ForEach(0..<3){index in
                    Image(photo[index])
                        .resizable()
                        .scaledToFit()
                }
            }
            .tabViewStyle(.page)
        }
    }
}

#Preview {
    image()
}
