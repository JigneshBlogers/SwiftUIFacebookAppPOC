//
//  MockTestdetailsView.swift
//  LCO
//
//  Created by jignesh kalantri on 14/07/22.
//

import SwiftUI

struct MockTestdetailsView: View {
    var mocktest: MockText
    var body: some View {
        VStack {
            Image(mocktest.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 210.0)
                .cornerRadius(12.0)
            Text(mocktest.sellPrice)
                .bold()
                .font(.title3)
            VStack {
                Text(mocktest.title)
                    .foregroundColor(Color.orange)
                    .bold()
                    .font(.subheadline)
                Text("Designated initialisers tells that you have to make all stored properties gets initialised for preparing the instance for object creation. You do this either by providing default values or by using init or by declaring the properties by var as optional.")
                    .padding()
                    .font(.subheadline)
            }
            HStack {
                Text("Clikc Me")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.trailing)
                    .lineLimit(1)
                    .padding(0.0)
            }
        }
    }
}

struct MockTestdetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MockTestdetailsView(mocktest: MockTestList.list[1])
    }
}
