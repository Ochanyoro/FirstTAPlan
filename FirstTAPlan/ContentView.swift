//
//  ContentView.swift
//  FirstTAPlan
//
//  Created by 大和田一裕 on 2022/06/30.
//

import SwiftUI

struct ContentView: View {
    
    @State var animateLike : Bool = true
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack{
            
            HStack{
                Image("")
            Text("TA 企画第 1 弾")
                .font(.title3)
                .fontWeight(.medium)
                .padding()
            }
            
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                
                Text("マイボールゴルフ")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(Color.green)
                
                
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                
            }
            .padding(.horizontal)
            .background(Color.green.opacity(0.1))
            .cornerRadius(10)
            .shadow(radius: 13)
            
            
            ZStack {
                Image("3-6")
                    .resizable()
                    .scaledToFit()
                
                
                LikeAnimationView()
                
            }
            .padding(.top, 20)
            
            Spacer()
            
            Overview()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
