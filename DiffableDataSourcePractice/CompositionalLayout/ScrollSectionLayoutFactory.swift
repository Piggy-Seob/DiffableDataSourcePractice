//
//  ScrollSectionLayoutFactory.swift
//  Musinsa_Jin_Seob
//
//  Created by 박진섭 on 2022/07/13.
//

import UIKit.UICollectionViewCompositionalLayout

struct ScrollSectionLayoutFactory: SectionLayoutCreator {
    
    static func makeSectionLayout() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: .init(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)))
        
        item.contentInsets = .init(top: 0,
                                   leading: 8.0,
                                   bottom: 0,
                                   trailing: 8.0)
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
            widthDimension: .fractionalWidth(1/3),
            heightDimension: .fractionalHeight(0.25)),
            subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        return section
    }
}
