//
//  web.swift
//  eatoast
//
//  Created by 114-2Workshop13 on 2026/5/3.
//

import SwiftUI
import WebKit

struct web: View{
    let net: String
    
var body: some View {
    WebView(url:URL(string:net))
    }
}

#Preview {
    web(net: "https://www.google.com/maps/place/女九餐廳/@25.0195299,121.5369003,17z/data=!3m1!4b1!4m6!3m5!1s0x3442aa27ae7387a7:0x99735a76e6b5dc2f!8m2!3d25.0195299!4d121.5394752!16s%2Fg%2F11c53k2k5d?entry=ttu&g_ep=EgoyMDI2MDQyOS4wIKXMDSoASAFQAw%3D%3D")
}
