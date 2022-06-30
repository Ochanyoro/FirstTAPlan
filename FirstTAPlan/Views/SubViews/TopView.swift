//
//  TopView.swift
//  FirstTAPlan
//
//  Created by 大和田一裕 on 2022/06/30.
//

import SwiftUI

struct TopView: View {
    
    var body: some View {
        VStack{
            HStack{
                Image("top")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.white, lineWidth: 4)
                    )
                    //.shadow(radius: 10)
                Spacer()
                
                Text("TA(Ochan) 企画第 1 弾")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding()
                    .foregroundColor(Color.white)
                
                Spacer()
                
            }
            .frame(maxWidth: .infinity)
            .padding(5)
            .background(Color.red.opacity(0.9))
            
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
                Image("activity")
                    .resizable()
                    .scaledToFit()
                
                
                LikeAnimationView()
                
            }
            .padding(.top, 20)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.gray.opacity(0.1)
            .edgesIgnoringSafeArea(.all)
            TopView()
        }
          
    }
}
