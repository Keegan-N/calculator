//
//  ContentView.swift
//  stack in stack in stack
//
//  Created by Norgard, Keegan - Student on 8/22/24.
//

import SwiftUI

struct bigger_one: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Text("0")
                .foregroundStyle(.white)
                .frame(width:340,height: 125, alignment: .trailing)
                .font(.system(size: 100))
            HStack{
                CircleButton2(color: .gray,text: "(",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: ")",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "Alpha",textColor: .white, textSize: 15)
                CircleButton2(color: .gray,text: "^",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "√",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "x",textColor: .white, textSize: 25)
            }
            HStack{
                CircleButton2(color: .gray,text: "mc",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "m+",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "m-",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "mr",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "2nd",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "x^2",textColor: .white, textSize: 20)
            }
            HStack{
                CircleButton2(color: .gray,text: "x^3",textColor: .white, textSize: 20)
                CircleButton2(color: .gray,text: "x^y",textColor: .white, textSize: 20)
                CircleButton2(color: .gray,text: "e^x",textColor: .white, textSize: 20)
                CircleButton2(color: .gray,text: "10^x",textColor: .white, textSize: 20)
                CircleButton2(color: .gray,text: "1/x",textColor: .white, textSize: 20)
                CircleButton2(color: .gray,text: "2√x",textColor: .white, textSize: 20)
            }
            HStack{
                CircleButton2(color: .gray,text: "3√x",textColor: .white, textSize: 20)
                CircleButton2(color: .gray,text: "y√x",textColor: .white, textSize: 20)
                CircleButton2(color: .gray,text: "Ln",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "log10",textColor: .white, textSize: 15)
                CircleButton2(color: .gray,text: "x!",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "sin",textColor: .white, textSize: 20)
            }
            HStack{
                CircleButton2(color: .gray,text: "cos",textColor: .white, textSize: 20)
                CircleButton2(color: .gray,text: "tan",textColor: .white, textSize: 20)
                CircleButton3(color: .white,text: "AC",textColor: .black, textSize: 25)
                CircleButton3(color: .white,text: "+/-",textColor: .black, textSize: 25)
                CircleButton3(color: .white,text: "%",textColor: .black, textSize: 25)
                CircleButton3(color: .orange,text: "/",textColor: .white, textSize: 25)
            }
            HStack{
                CircleButton2(color: .gray,text: "e",textColor: .white, textSize: 25)
                CircleButton2(color: .gray,text: "EE",textColor: .white, textSize: 25)
                CircleButton3(color: .gray,text: "7",textColor: .white, textSize: 25)
                CircleButton3(color: .gray,text: "8",textColor: .white, textSize: 25)
                CircleButton3(color: .gray,text: "9",textColor: .white, textSize: 25)
                CircleButton3(color: .orange,text: "x",textColor: .white, textSize: 25)
            }
            HStack{
                CircleButton2(color: .gray,text: "Rad",textColor: .white, textSize: 15)
                CircleButton2(color: .gray,text: "sinh",textColor: .white, textSize: 15)
                CircleButton3(color: .gray,text: "4",textColor: .white, textSize: 25)
                CircleButton3(color: .gray,text: "5",textColor: .white, textSize: 25)
                CircleButton3(color: .gray,text: "6",textColor: .white, textSize: 25)
                CircleButton3(color: .orange,text: "-",textColor: .white, textSize: 25)
            }
            HStack{
                CircleButton2(color: .gray,text: "cosh",textColor: .white, textSize: 15)
                CircleButton2(color: .gray,text: "tanh",textColor: .white, textSize: 15)
                CircleButton3(color: .gray,text: "1",textColor: .white, textSize: 25)
                CircleButton3(color: .gray,text: "2",textColor: .white, textSize: 25)
                CircleButton3(color: .gray,text: "3",textColor: .white, textSize: 25)
                CircleButton3(color: .orange,text: "+",textColor: .white, textSize: 25)
            }
            HStack{
                CircleButton2(color: .gray,text: "Rand",textColor: .white, textSize: 15)
                CircleButton2(color: .gray,text: "π",textColor: .white, textSize: 30)
                ZStack{
                    Capsule()
                        .frame(width: 104,height: 52)
                        .foregroundColor(.gray)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    Text("0")
                        .foregroundStyle(.white)
                        .font(.system(size: 25))
                        .frame(width: 80, alignment: .leading)
                        
                }
                
                CircleButton3(color: .gray,text: ".",textColor: .white, textSize: 50)
                CircleButton3(color: .orange,text: "=",textColor: .white, textSize: 25)
            }
        }
        .padding()
        .padding()
        .background(.black)
        .ignoresSafeArea()
    }
}

#Preview {
    bigger_one()
}

struct CircleButton2: View {
    var color: Color
    var text: String
    var textColor: Color
    var textSize: CGFloat
    var body: some View {
        ZStack{
            Circle()
                .opacity(0.4)
                .frame(width: 52)
                .foregroundColor(color)
            Text(text)
                .foregroundColor(textColor)
                .font(.system(size: textSize))
        }
    }
}
struct CircleButton3: View {
    var color: Color
    var text: String
    var textColor: Color
    var textSize: CGFloat
    var body: some View {
        ZStack{
            Circle()
                .opacity(0.8)
                .frame(width: 52)
                .foregroundColor(color)
            Text(text)
                .foregroundColor(textColor)
                .font(.system(size: textSize))
        }
    }
}

