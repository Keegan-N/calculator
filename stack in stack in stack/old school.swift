//
//  SwiftUIView.swift
//  stack in stack in stack
//
//  Created by Norgard, Keegan - Student on 8/23/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(.gray)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack(spacing: 30){
                ZStack{
                    Rectangle()
                        .frame(height: 180)
                        .ignoresSafeArea()
                    HStack(spacing: 60){
                        Rectangle()
                            .stroke(.white,lineWidth: 3)
                            .frame(width:40,height:40)
                        Text("Calculator")
                            .font(.system(size: 50))
                            .foregroundStyle(.white)
                    }
                }
                Spacer()
                
                ZStack{
                    Rectangle()
                        .stroke(.black,lineWidth: 5)
                        .frame(width: 350,height: 100)
                        .background(.white)
                    Text("3")
                        .font(.system(size: 60))
                        .frame(width: 300,alignment: .trailing)
                }
                HStack(spacing: 20){
                    squareButton(height: 60,width: 70,text: "C")
                    squareButton(height: 60,width: 70,text: "=")
                    squareButton(height: 60,width: 70,text: "/")
                    squareButton(height: 60,width: 70,text: "x")
                }
                HStack(spacing: 20){
                    squareButton(height: 60,width: 70,text: "7")
                    squareButton(height: 60,width: 70,text: "8")
                    squareButton(height: 60,width: 70,text: "9")
                    squareButton(height: 60,width: 70,text: "-")
                }
                HStack(spacing: 20){
                    squareButton(height: 60,width: 70,text: "4")
                    squareButton(height: 60,width: 70,text: "5")
                    squareButton(height: 60,width: 70,text: "6")
                    squareButton(height: 60,width: 70,text: "+")
                }
                    HStack(alignment: .top, spacing: 20){
                        VStack(spacing: 30){
                            HStack(spacing: 20){
                                squareButton(height: 60,width: 70,text: "1")
                                squareButton(height: 60,width: 70,text: "2")
                                squareButton(height: 60,width: 70,text: "3")
                            }
                            HStack(spacing: 20){
                                squareButton(height: 60,width: 160,text: "0")
                                squareButton(height: 60,width: 70,text: ".")
                         
                            }
                            
                        }
                        squareButton(height: 150,width: 70,text: "=")
                }
            }
        }
    }
}
    
#Preview {
    SwiftUIView()
}

struct squareButton: View {
    var height: CGFloat
    var width: CGFloat
    var text: String
    var body: some View {
        ZStack{
            Rectangle()
                .size(CGSize(width: width, height: height))
                .frame(width: width-15,height: height-15,alignment: .bottomTrailing)
                .foregroundStyle(.black)
            Rectangle()
                .frame(width: width,height: height)
                .foregroundStyle(.white)
            Rectangle()
                .stroke(.black,lineWidth: 3)
                .frame(width: width,height: height)
            
            Text(text)
                .foregroundColor(.black)
                .font(.system(size: 50))
        }
    }
}
