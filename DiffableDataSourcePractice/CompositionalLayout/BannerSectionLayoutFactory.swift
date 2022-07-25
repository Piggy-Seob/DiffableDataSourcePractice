//
//  BannerSectionLayoutFactory.swift
//  Musinsa_Jin_Seob
//
//  Created by 박진섭 on 2022/07/13.
//

import UIKit.UICollectionViewLayout

protocol SectionLayoutCreator {
    static func makeSectionLayout() -> NSCollectionLayoutSection
}

struct BannerSectionLayoutFactory: SectionLayoutCreator {
    
    static func makeSectionLayout() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: .init(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
            widthDimension: .fractionalWidth(1),
            heightDimension: .estimated(400)),
            subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .paging
        
        return section
    }
}
