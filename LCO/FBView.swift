//
//  FBView.swift
//  LCO
//
//  Created by jignesh kalantri on 19/07/22.
//

import SwiftUI

struct FBView: View {
    
    @State var isLiked: Bool = false
    var model: FBPostModel
    var body: some View {
        VStack {
            HStack {
                Image(model.imageName)
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(50)
                VStack {
                    HStack {
                        Text(model.name)
                            .foregroundColor(.blue)
                            .font(.system(size: 17, weight: .bold, design: .default))
                        Spacer()
                    }
                    HStack {
                        Text("5 min ago....")
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                }
            }
            Spacer()
            HStack {
                Text(model.post)
                Spacer()
                .font(.system(size: 17, weight: .semibold, design: .default))
                .multilineTextAlignment(.leading)
            }
        
            HStack {
                Button(action:{
                    isLiked.toggle()
                }, label:  {
                    Text(isLiked ? "Liked" : "Like")
                })
                Spacer()
                Button(action:{
                }, label:  {
                    Text("Comment")
                })
                Spacer()
                Button(action:{
                }, label:  {
                    Text("Share")
                })
            }.padding()
        }.padding()
        .background(Color(.systemBackground))
        .cornerRadius(8)
    }
}
