//
//  GridSectionLayoutFactory.swift
//  Musinsa_Jin_Seob
//
//  Created by 박진섭 on 2022/07/13.
//

import UIKit.UICollectionViewLayout

struct GridSectionLayoutFactory: SectionLayoutCreator {
    
    static func makeSectionLayout() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: .init(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)))
        
        item.contentInsets = .init(top: 0,
                                   leading: 8.0,
                                   bottom: 8.0,
                                   trailing: 8.0)
                
        let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(
            widthDimension: .fractionalWidth(1/3),
            heightDimension: .fractionalHeight(0.5)),
            subitem: item,
            count: 2)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous

        return section
    }
}
