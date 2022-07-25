//
//  ImageData.swift
//  DiffableDataSourcePractice
//
//  Created by 박진섭 on 2022/07/22.
//

import Foundation

struct ImageData: Decodable, Hashable {
    let BannerImages: [BannerImage]
    let gridImages: [GridImage]
    let scrollImages: [ScrollImage]
}

struct BannerImage: Decodable, Hashable {
    var id: String = UUID().uuidString
    let imageURL: String
}

struct GridImage: Decodable, Hashable {
    var id: String = UUID().uuidString
    let imageURL: String
}

struct ScrollImage: Decodable, Hashable {
    var id: String = UUID().uuidString
    let imageURL: String
}
