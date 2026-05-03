//
//  ContentView.swift
//  eatoast
//
//  Created by 114-2Workshop13 on 2026/5/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("關於", systemImage: "person"){
                imforemation()
            }
            Tab("資訊", systemImage: "books.vertical"){
                eat()
            }
            Tab("圖片", systemImage: "photo"){
                image()
            }
        }
    }
}

#Preview {
    ContentView()
}
