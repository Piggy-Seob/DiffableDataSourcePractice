//
//  MockDataRepo.swift
//  DiffableDataSourcePractice
//
//  Created by 박진섭 on 2022/07/25.
//

import Foundation

struct MockDataRepo {
    
    func mockData() -> ImageData{
        return ImageData(BannerImages: banners, gridImages: gridImages, scrollImages: scrollImages)
    }
    
    private let banners: [BannerImage] = [BannerImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRrlfj2YtujOz-X8WiYPzP-8S6ffsAruJpkw&usqp=CAU"),
                                  BannerImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRrlfj2YtujOz-X8WiYPzP-8S6ffsAruJpkw&usqp=CAU"),
                                  BannerImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRrlfj2YtujOz-X8WiYPzP-8S6ffsAruJpkw&usqp=CAU"),
                                  BannerImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRrlfj2YtujOz-X8WiYPzP-8S6ffsAruJpkw&usqp=CAU"),
                                  BannerImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRrlfj2YtujOz-X8WiYPzP-8S6ffsAruJpkw&usqp=CAU")
    ]
    private let gridImages: [GridImage] = [GridImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Q_Wx7Xpgk6Jt1FjQMamcW-0S749sYJQxlA&usqp=CAU"),
                                   GridImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Q_Wx7Xpgk6Jt1FjQMamcW-0S749sYJQxlA&usqp=CAU"),
                                   GridImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Q_Wx7Xpgk6Jt1FjQMamcW-0S749sYJQxlA&usqp=CAU"),
                                   GridImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Q_Wx7Xpgk6Jt1FjQMamcW-0S749sYJQxlA&usqp=CAU"),
                                   GridImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Q_Wx7Xpgk6Jt1FjQMamcW-0S749sYJQxlA&usqp=CAU")
    ]
    private let scrollImages: [ScrollImage] = [ScrollImage(imageURL:    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSScJq6wvU3LWzlIXMX3iR_SUALhwYE4nG0hw&usqp=CAU"),
                                       ScrollImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSScJq6wvU3LWzlIXMX3iR_SUALhwYE4nG0hw&usqp=CAU"),
                                       ScrollImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSScJq6wvU3LWzlIXMX3iR_SUALhwYE4nG0hw&usqp=CAU"),
                                       ScrollImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSScJq6wvU3LWzlIXMX3iR_SUALhwYE4nG0hw&usqp=CAU"),
                                       ScrollImage(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSScJq6wvU3LWzlIXMX3iR_SUALhwYE4nG0hw&usqp=CAU")
    ]
}
