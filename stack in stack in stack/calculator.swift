//
//  ContentView.swift
//  stack in stack in stack
//
//  Created by Norgard, Keegan - Student on 8/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Text("0")
                .foregroundStyle(.white)
                .frame(width:340,height: 125, alignment: .trailing)
                .font(.system(size: 100))
            HStack{
                CircleButton(color: .white,text: "AC",textColor: .black, textSize: 40)
                CircleButton(color: .white,text: "+/-",textColor: .black, textSize: 40)
                CircleButton(color: .white,text: "%",textColor: .black, textSize: 40)
                CircleButton(color: .orange,text: "/",textColor: .white, textSize: 40)
            }
            HStack{
                CircleButton(color: .gray,text: "7",textColor: .white, textSize: 40)
                CircleButton(color: .gray,text: "8",textColor: .white, textSize: 40)
                CircleButton(color: .gray,text: "9",textColor: .white, textSize: 40)
                CircleButton(color: .orange,text: "x",textColor: .white, textSize: 40)
            }
            HStack{
                CircleButton(color: .gray,text: "4",textColor: .white, textSize: 40)
                CircleButton(color: .gray,text: "5",textColor: .white, textSize: 40)
                CircleButton(color: .gray,text: "6",textColor: .white, textSize: 40)
                CircleButton(color: .orange,text: "-",textColor: .white, textSize: 40)
            }
            HStack{
                CircleButton(color: .gray,text: "1",textColor: .white, textSize: 40)
                CircleButton(color: .gray,text: "2",textColor: .white, textSize: 40)
                CircleButton(color: .gray,text: "3",textColor: .white, textSize: 40)
                CircleButton(color: .orange,text: "+",textColor: .white, textSize: 40)
            }
            HStack{
                ZStack{
                    Capsule()
                        .frame(width: 180,height: 90)
                        .foregroundColor(.gray)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    Text("0")
                        .foregroundStyle(.white)
                        .font(.system(size: 40))
                        .frame(width: 100, alignment: .leading)
                        
                }
                CircleButton(color: .gray,text: ".",textColor: .white, textSize: 50)
                CircleButton(color: .orange,text: "=",textColor: .white, textSize: 40)
            }
        }
        .padding()
        .background(.black)
    }
}

#Preview {
    ContentView()
}

struct CircleButton: View {
    var color: Color
    var text: String
    var textColor: Color
    var textSize: CGFloat
    var body: some View {
        ZStack{
            Circle()
                .opacity(0.8)
                .frame(width: 90)
                .foregroundColor(color)
            Text(text)
                .foregroundColor(textColor)
                .font(.system(size: textSize))
        }
    }
}
