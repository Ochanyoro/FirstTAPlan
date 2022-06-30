//
//  SettingsView.swift
//  FirstTAPlan
//
//  Created by 大和田一裕 on 2022/06/30.
//

import SwiftUI

struct SettingsView: View {
    
   
    
    let images: [String] = ["murata","matiyama","top","hunakawa","inose"]
    let colors: [Color] = [Color.yellow, Color.blue,Color.red,Color.green,Color.purple]
    let color: [Color] = [Color.red]
    
    var body: some View {
        ScrollView{
            GroupBox(label: SettingsLabelView(labelText: "第１回 TA(Ochan) 放課後企画",secondActivity: "first activity", labelImages: ["top"],colors: color, w:60, h:60), content: {
            HStack(alignment: .center, spacing: 0, content: {
                ZStack(alignment: .bottomLeading){
                    Image("activity")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 80, alignment: .center)
                        .cornerRadius(12)
                    
                    LikeAnimationView()
                }
                
                Spacer()
                
                ZStack{
                    HStack(spacing: 0){
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                    
                    Text("マイボールゴルフ")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .padding(.horizontal,3)
                        .foregroundColor(Color.green)
                        //.shadow(radius: 10)
                        
                        
                        
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                        
                    }
                }
                .padding(.vertical, 5)
                .background(Color.green.opacity(0.09))
                
                Spacer()
                
            })
        })
        .padding()
            
            GroupBox(label: SettingsLabelView(labelText: "内容", labelImages: images,colors:colors ,w:30,h:30,color: .red ), content: {
                Text("1 各班、マイボール（新聞紙1枚を丸め、アルミホイルで包み完成）を一つ用意します。")
                Divider().padding(.bottom,5)
                Text("2 傘を開き、逆さにして置きます。持ち手の部分に①・②などと掲示してホール代わりにします。ホールを体育館いっぱいに距離を広げて、ばらばらに置きます。")
              
                Divider().padding(.bottom,5)
                Text("3 参加者の皆さんは自分の傘をたたんで逆さに持ち、順番に持ち手の部分でショットをして、めざすホールにマイボールを入れていきます。一つのホールに入ったら、打ち手を交代（ボールはマイボールを使用）。")
          
                Divider().padding(.bottom,5)
                Text("4 記録係が班全員のショットの総数を記録。すべてのホールを回ったところでショットの合計を出します。合計の少ない班が勝ち。")
            })
            .font(.footnote)
            .padding()
                
            
            GroupBox(label: SettingsLabelView(labelText: "詳細", labelImages: images,colors:colors , w:30, h:30), content: {
                SettingsRowView(leftIcon: "calendar.badge.clock", text: "日付未定(7月中を予定)", color:Color.MyTheme.purpleColor)
                SettingsRowView(leftIcon: "pencil", text: "傘と紙のボール", color:Color.MyTheme.purpleColor)
                SettingsRowView(leftIcon: "person.3.fill", text: "できるだけみんなで", color:Color.MyTheme.purpleColor)
                SettingsRowView(leftIcon: "dollarsign.circle.fill", text: "村田さんに期待🤫", color:Color.MyTheme.purpleColor)
            })
            .padding()
        }
    }
}
                   
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
