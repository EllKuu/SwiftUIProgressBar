//
//  ContentView.swift
//  SwiftUIProgressBar
//
//  Created by elliott kung on 2022-10-23.
//

import SwiftUI

//#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)

struct ContentView: View {
    
    @State var percent: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 100) {
            Text("\(Int(percent))")
                .font(.system(size: 40, weight: .bold))
            
            HStack {
                Spacer()
                ProgressBar(
                    width: .infinity/3,
                    progressBarWidth: 100,
                    height: 10,
                    percent: percent,
                    color1: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),
                    color2: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
                )
                .animation(.spring())
                
                ProgressBar(
                    width: .infinity/3,
                    progressBarWidth: 100,
                    height: 10,
                    percent: percent,
                    color1: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),
                    color2: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
                )
                .animation(.spring())
                
                ProgressBar(
                    width: .infinity/3,
                    progressBarWidth: 100,
                    height: 10,
                    percent: percent,
                    color1: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),
                    color2: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
                )
                .animation(.spring())

                Spacer()
            }
            
            Button(action: {
                percent = CGFloat.random(in: 0...100)
            }) {
                Text("Generate Random Number")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
