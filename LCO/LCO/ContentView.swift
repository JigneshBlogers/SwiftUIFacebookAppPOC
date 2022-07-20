//
//  ContentView.swift
//  LCO
//
//  Created by jignesh kalantri on 08/03/22.
//

import SwiftUI

struct FBPostModel: Hashable {
    let name: String
    let imageName: String
    let post: String
}

struct ContentView: View {
    
    @Binding var text : String
    var stories = ["swaraj", "swaraj1", "swaraj2"]
    let posts = [
        FBPostModel(name: "Swaraj Kalantri",
                    imageName: "swaraj",
                    post: "I am swaraj, LKG student in CMS highschoo"),
        FBPostModel(name: "Shriya Kalantri",
                    imageName: "swaraj1",
                    post: "I am shriyan, i am nan pro baby and love the toys"),
        FBPostModel(name: "Swaraj Kalantri",
                    imageName: "swaraj",
                    post: "I am swaraj, LKG student in CMS highschool")
    ]
    var mockTest: [MockText] = MockTestList.list
    var body: some View {
        VStack {
            HStack {
                Text("facebook")
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .foregroundColor(.blue)
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.red)
            }.clipped(antialiased: true)
            TextField("Search.....", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(5)
                .padding(.horizontal,10)
            ZStack {
                Color(.secondarySystemBackground)
                ScrollView (.vertical) {
                    VStack {
                        StoriesView(stories: stories)
                        ForEach(posts, id:\.self) { model in
                            FBView(model:model)
                            Spacer()
                        }
                    }
                }
            }
            Spacer()
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(text: .constant(""))
                .previewInterfaceOrientation(.portraitUpsideDown)
            ContentView(text: .constant(""))
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
