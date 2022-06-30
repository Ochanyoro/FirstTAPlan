//
//  SettingsLabelView.swift
//  FirstTAPlan
//
//  Created by 大和田一裕 on 2022/06/30.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var secondActivity: String = ""
    var labelImages: [String]
    var colors: [Color]
    var w: CGFloat
    var h: CGFloat
    var color: Color = .green
    
    var body: some View {
        VStack {
            HStack {
                if secondActivity.isEmpty{
                Text(labelText)
                    .fontWeight(.bold)
                } else {
                    VStack(spacing:0) {
                        Text(labelText)
                            .fontWeight(.bold)
                            
                        
                        Text(secondActivity)
                            .font(.footnote)
                            .foregroundColor(.gray.opacity(0.6))
                            .padding(.top, 5)
                    }
                }
                
                Spacer()
                
                ForEach(0..<labelImages.count, id: \.self){ id in
                    HStack{
                    Image("\(labelImages[id])")
                    .resizable()
                    .scaledToFill()
                    .frame(width: w, height: h)
                    .clipped()
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(colors[id], lineWidth: 2)
                    )
                    }
                }
            }
            
            Divider()
                .padding(.vertical, 4)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "TEST Label", labelImages: ["top"],colors: [Color.red],w: 60,h: 60)
            .previewLayout(.sizeThatFits)
    }
}
