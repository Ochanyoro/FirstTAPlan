//
//  LikeAnimationView.swift
//  FirstTAPlan
//
//  Created by 大和田一裕 on 2022/06/30.
//

import SwiftUI

struct LikeAnimationView: View {
    
    //@Binding var animate: Bool
    @State var animate: Bool = false
    
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .foregroundColor(Color.red.opacity(0.3))
                .font(.system(size: 40))
                .opacity(animate ? 1.0 : 0.0)
                .scaleEffect(animate ? 1.0 : 0.3)
            
            Image(systemName: "heart.fill")
                .foregroundColor(Color.red.opacity(0.6))
                .font(.system(size: 30))
                .opacity(animate ? 1.0 : 0.0)
                .scaleEffect(animate ? 1.0 : 0.4)


            Image(systemName: "heart.fill")
                .foregroundColor(Color.red.opacity(0.9))
                .font(.system(size: 20))
                .opacity(animate ? 1.0 : 0.0)
                .scaleEffect(animate ? 1.0 : 0.5)
        }
        .animation(Animation.linear(duration: 2.0).repeatForever())
        .onAppear(perform: {
            animate.toggle()
        })
    }
}

struct LikeAnimationView_Previews: PreviewProvider {
    
    @State static var animate: Bool = true
    
    static var previews: some View {
        LikeAnimationView()
            .previewLayout(.sizeThatFits)
    }
}
