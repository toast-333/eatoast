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
                九久滷贊舖位於台大校園女九餐廳2樓，
                鄰近小耶林道，
                是台大學生用餐的熱門地點。
                """
              , net: "https://www.google.com/maps/place/女九餐廳/@25.0195299,121.5369003,17z/data=!3m1!4b1!4m6!3m5!1s0x3442aa27ae7387a7:0x99735a76e6b5dc2f!8m2!3d25.0195299!4d121.5394752!16s%2Fg%2F11c53k2k5d?entry=ttu&g_ep=EgoyMDI2MDQyOS4wIKXMDSoASAFQAw%3D%3D"),
        llist(name: "營業時間", detail:
                """
                （由於實際營業時間與公告有些出入，
                這邊以本人經驗當做參考）
                
                週一至週五：
                上午11:05~下午1:40
                下午4:35~下午7:00
                週末及國定假日不營業
                """
                , net: "1"),
        llist(name: "如何點餐", detail:
                """
                1.走到店家左手邊拿取紅色的籃子和夾子
                2.在櫃檯上和冰櫃中夾想吃的東西
                3.走到櫃檯右側結帳
                4.等待叫號
                5.享用美味的滷味！
                """
                , net: "1"),
        llist(name: "菜單", detail:
                """
                蔬菜類：
                季節時蔬 20 香菇 20
                白菜頭 20 水蓮 25
                玉米筍 20 大陸妹 20
                娃娃菜 20
                
                綜合類：
                芋頭糕 20 米血糕 15
                米腸 20 素雞 15
                海帶 10 豆乾 5
                滷蛋 15
                
                肉類：
                豬肉片 40 腱子肉 40
                豬頭皮 35
                
                豆製品：
                蘭花干 20 大溪豆乾 20
                百頁豆腐 15 大豆包 20
                小豆包 15
                
                麵食類：
                王子麵 15 冬粉 15
                蒸煮麵 20 鍋燒意麵 20
                """
                , net: "1"),
        llist(name: "美味心得", detail:
                """
                我個人認為這家滷味美味又好吃，
                其中現場還有許多火鍋料可以選擇，
                一個大概五到十元，
                消費滿100元還會送高麗菜，
                非常划算。

                唯一的缺點就是遇到用餐尖峰時，
                會排隊非常久，
                建議可以11點或是4點半前往用餐，
                不用久候就能享受豐富的滷味。
                """
                , net: "1")
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
        Text(detail)
            .font(.title2)
            if net != "1"{
                Text("")
                NavigationStack{
                    NavigationLink("看地圖請點我"){
                        web(net: net)
                    }
            }
        }
    }
}


#Preview {
    eat()
}
