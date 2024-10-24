//
//  SwiftUIView.swift
//  Second challenge
//
//  Created by Wajan Altalhan on 18/04/1446 AH.
//

import SwiftUI
struct second: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            HStack {
                     Button(action: {
                         print("Plus button clicked")
                     }) {
                         ZStack {
                             Circle()
                                 .frame(width: 30, height: 30)
                                 .foregroundColor(.btnBG)
                                 .position(x: 350, y: 80)
                             Image(systemName: "plus")
                                 .foregroundColor(.tx1)
                                 .font(.system(size: 22))
                                 .position(x: 350, y: 80)
                         }
                     }
                     .padding(.leading)
                     // Line Button
                     Button(action: {
                         // Action for the line button
                         print("Line button clicked")
                     }) {
                         ZStack {
                             Circle()
                                 .frame(width: 30, height: 30)
                                 .foregroundColor(.btnBG)
                                 .position(x: 110, y: 80)
                             
                             Image(systemName: "line.3.horizontal.decrease")
                                 .foregroundColor(.tx1)
                                 .font(.system(size: 21))
                                 .position(x: 110, y: 80)
                         }
                     }
                     .padding(.leading)
                 }
            VStack{
               
                                Text("Journal")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 34))
                                    .position(x: 85, y: 80)
                Image("notebook")
                    .resizable()
                    .frame(width: 99.334 , height: 133.889)
                    .padding(.bottom, 20)
                Text("Begin Your Journal")
                    .fontWeight(.black)
                    .font(.system(size: 25))
                    .foregroundColor(Color("tx1"))
                    .padding(.bottom, 300)
                Text("Craft your personal diary, tap the plus icon to begin")
                    .foregroundColor(Color.white)
                    .frame(width: 282, height: 53)
                    .multilineTextAlignment(.center)
                    .padding(.top, -300)
                
                
            }
        }
    }
}
#Preview {
    second()
}
