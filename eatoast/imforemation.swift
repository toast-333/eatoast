//
//  imforemation.swift
//  eatoast
//
//  Created by 114-2Workshop13 on 2026/5/3.
//

import SwiftUI

struct imforemation: View{
    var body: some View{
        ZStack{
            Color.sirin
                .ignoresSafeArea()
            VStack(spacing: 0){
                Text(
                """
                本APP主要是介紹台大裡的餐廳「九久滷贊舖」
                因為我覺得很好吃
                """
                )
                .multilineTextAlignment(.center)
                Image(.toast)
                    .resizable()
                    .scaledToFit()
                Text(
                """
                這塊吐司決定要來和大家分享一些資訊:
                點選“關於”可以看到本APP的說明
                點選“資訊”可以看到詳細的介紹
                點選“圖片”可以看到食物實際圖片
                """
                )
                .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    imforemation()
}
