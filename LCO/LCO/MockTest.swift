//
//  MockTest.swift
//  LCO
//
//  Created by jignesh kalantri on 28/05/22.
//

import SwiftUI

struct MockText: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var description: String
    var sellPrice: String
    var originalPrice: String
    var url: URL
}

struct MockTestList {
    static let list = [
        MockText(imageName: "swaraj", title: "LCO Test Online", description: "iOS Developer", sellPrice: "102", originalPrice: "300", url: URL(string: "www.google.com")!),
        MockText(imageName: "swaraj", title: "LCO Test Online", description: "iOS Developer", sellPrice: "102", originalPrice: "300", url: URL(string: "www.google.com")!),
        MockText(imageName: "swaraj", title: "LCO Test Online", description: "iOS Developer", sellPrice: "FREE", originalPrice: "300", url: URL(string: "www.google.com")!),
        MockText(imageName: "swaraj", title: "LCO Test Online", description: "iOS Developer", sellPrice: "FREE", originalPrice: "FREE", url: URL(string: "www.google.com")!),
        MockText(imageName: "swaraj", title: "LCO Test Online", description: "iOS Developer", sellPrice: "102", originalPrice: "FREE", url: URL(string: "www.google.com")!),
        MockText(imageName: "swaraj", title: "LCO Test Online", description: "iOS Developer", sellPrice: "FREE", originalPrice: "300", url: URL(string: "www.google.com")!),
        MockText(imageName: "swaraj", title: "LCO Test Online", description: "iOS Developer", sellPrice: "102", originalPrice: "300", url: URL(string: "www.google.com")!)
    ]
}
