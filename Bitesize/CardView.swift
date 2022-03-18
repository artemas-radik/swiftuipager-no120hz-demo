//
//  CardView.swift
//  Bitesize
//
//  Created by Artemas Radik on 2/7/22.
//

import SwiftUI

struct CardView: View {
    
    let name: String
    let description: String
    let image: String
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                GeometryReader { geometry in
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                }
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(name)
                            .font(.title)
                            .bold()
                            .padding(.leading, 10)
                            .padding(.top, 10)
                            .lineLimit(1)
//                                    Spacer()
//                                    Color.black.frame(height: 123)
//                                    Color.white.frame(height: 40).cornerRadius(10).padding(.trailing)
                        Text(description)
                            .bold()
                            .padding(.top, 6)
                            .padding(.horizontal, 10)
                            .foregroundColor(.gray)
//                                    Spacer()
//                                    Color.black.frame(height: 123)
//                                    Color.white.frame(height: 40).cornerRadius(10).padding(.trailing)
                    }
                    Spacer()
                    VStack(spacing: 0){
                        Color.clear.frame(width: 1, height: 6)
                        Button(action: {
                        }) {
                            VStack(spacing: 8){
                                Image(systemName: "suit.heart.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("22K")
                                    .foregroundColor(.white)
                            }
                        }.padding(.bottom, 26)
                        Button(action: {
                        }) {
                            VStack(spacing: 8){
                                Image(systemName: "message.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("1021")
                                    .foregroundColor(.white)
                            }
                        }.padding(.bottom, 26)
                        Button(action: {
                        }) {
                            VStack(spacing: 8){
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("Share")
                                    .foregroundColor(.white)
                            }
                        }
                        Color.clear.frame(width: 1, height: 6)
                    }
                    .padding(.top, 6)
                    .padding([.trailing], 10)
                }
//                            .padding(.bottom, 6)
//                            .padding(.leading)
//                            .padding(.vertical, 16)
                .background(Color.black)
            }.frame(maxHeight: geometry.size.height)
        }
    }
}
