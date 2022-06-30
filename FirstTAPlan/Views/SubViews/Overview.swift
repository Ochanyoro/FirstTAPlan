//
//  Overview.swift
//  FirstTAPlan
//
//  Created by 大和田一裕 on 2022/06/30.
//

import SwiftUI

struct Overview: View {
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        HStack{
            VStack {
                ScrollView{
                    Text("説明")
                        .padding(.vertical,3)
                        .frame(width: screen.width/2-8)
                        .background(Color.red.opacity(0.3))
                        .cornerRadius(5)
                    Text("1 各班、マイボール（新聞紙1枚を丸め、アルミホイルで包み完成）を一つ用意します。")
                        .padding(.bottom,2)
                    Text("2 傘を開き、逆さにして置きます。持ち手の部分に①・②などと掲示してホール代わりにします。ホールを体育館いっぱいに距離を広げて、ばらばらに置きます。")
                        .padding(.bottom,2)
                    Text("3 子供たちは自分の傘をたたんで逆さに持ち、順番に持ち手の部分でショットをして、めざすホールにマイボールを入れていきます。一つのホールに入ったら、打ち手を交代（ボールはマイボールを使用）。")
                        .padding(.bottom,2)
                    Text("4 記録係が班全員のショットの総数を記録。すべてのホールを回ったところでショットの合計を出します。合計の少ない班が勝ち。")
                        .padding(.bottom,2)
                    
                }
                .padding(.horizontal,8)
                .frame(width: screen.width/2)
            }
            
            ScrollView{
                Text("説明")
                    .padding(.vertical,3)
                    .frame(width: screen.width/2-8)
                    .background(Color.red.opacity(0.3))
                    .cornerRadius(5)
                
                Spacer()
            }
            
        }
        .font(.system(size: 9))

    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
