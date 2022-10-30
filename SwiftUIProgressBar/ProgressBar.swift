//
//  ProgressBar.swift
//  SwiftUIProgressBar
//
//  Created by elliott kung on 2022-10-23.
//

import SwiftUI

struct ProgressBar: View {
    
    var width: CGFloat = .infinity
    var progressBarWidth: CGFloat = 200
    var height: CGFloat = 5
    var percent: CGFloat = 60
    var color1 = Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
    
    var body: some View {
            
        let multiplier = progressBarWidth / 100
        
        VStack {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: height, style: .continuous)
                    .frame(width: width, height: height)
                .foregroundColor(Color.black.opacity(0.1))
                .padding()
                
                RoundedRectangle(cornerRadius: height, style: .continuous)
                    .frame(width: percent * multiplier, height: height)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing)
                            .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                    )
                    .foregroundColor(.clear)
                    .padding()
            }
            Text("Question 2/3")
        }
        
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
