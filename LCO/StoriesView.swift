//
//  StoriesView.swift
//  LCO
//
//  Created by jignesh kalantri on 19/07/22.
//

import SwiftUI

struct StoriesView: View {
    let stories : [String]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(stories, id:\.self) { name in
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode:.fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .clipped()
                }
            }.padding()
        }
    }
}
