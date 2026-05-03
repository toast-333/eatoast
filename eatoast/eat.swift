//
//  eat.swift
//  eatoast
//
//  Created by 114-2Workshop13 on 2026/5/3.
//

import SwiftUI
import Foundation

struct llist: Identifiable{
    let id = UUID()
    let name: String
    let detail: String
    let net: String
}

struct eat: View{
    let ccc=[
        llist(name: "營業據點", detail:
                """
                
                """
              , net: "https://www.google.com/maps/place/女九餐廳/@25.0195299,121.5369003,17z/data=!3m1!4b1!4m6!3m5!1s0x3442aa27ae7387a7:0x99735a76e6b5dc2f!8m2!3d25.0195299!4d121.5394752!16s%2Fg%2F11c53k2k5d?entry=ttu&g_ep=EgoyMDI2MDQyOS4wIKXMDSoASAFQAw%3D%3D"),
        llist(name: "營業時間", detail:
                """
                
                """
                , net: "1"),
        llist(name: "如何點餐", detail:
                """
                
                """
                , net: "1"),
        llist(name: "菜單", detail:
                """
                
                """
                , net: "1"),
        llist(name: "美味心得", detail: "", net: "1")
    ]
    var body: some View{
        NavigationStack{
            List{
                HStack{
                    Image(.toast)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height:100)
                    Text(":好吃歐！")
                }
                ForEach(ccc){llist in NavigationLink(llist.name){
                    tttoast(detail: llist.detail, net: llist.net)
                    }
                }
            }
            .navigationTitle("關於「九久滷贊舖」")
        }
    }
}

struct tttoast: View{
    let detail: String
    let net: String
    
    var body: some View{
        VStack{
            Text(detail)
            if net != "1"{
                NavigationStack{
                    NavigationLink("看地圖請點我"){
                        web(net: net)
                    }
                }
            }
        }
    }
}


#Preview {
    eat()
}
