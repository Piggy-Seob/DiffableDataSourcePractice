//
//  CollectionViewDataSourceManager.swift
//  DiffableDataSourcePractice
//
//  Created by 박진섭 on 2022/07/25.
//

import UIKit

typealias DataSource = UICollectionViewDiffableDataSource<SectionType, AnyHashable>

struct CollectionViewDataSourceManager {
    
    var dataSource: DataSource?
    
    // regist Cell, configure Cell
    mutating func setDataSource(in collectionView: UICollectionView) {
        let registrator = CollectionViewRegistrator()
        
        let bannerCellRegistration = registrator.makeBannerCellRegister()
        let gridCellRegistration = registrator.makeGridCellRegister()
        let scrollCellRegistration = registrator.makeScrollCellRegister()
        
        let dataSource: DataSource? =
            .init(collectionView: collectionView) { collectionView, indexPath, imageData in
                guard let section = SectionType(rawValue: indexPath.section) else { return nil } // make SectionType
                switch section {
                case .banner:
                    guard let imageData = imageData as? BannerImage else { return nil }
                    return collectionView.dequeueConfiguredReusableCell(
                        using: bannerCellRegistration,
                        for: indexPath,
                        item: imageData)
                case .grid:
                    guard let imageData = imageData as? GridImage else { return nil }
                    return collectionView.dequeueConfiguredReusableCell(
                        using: gridCellRegistration,
                        for: indexPath,
                        item: imageData)
                case .scroll:
                    guard let imageData = imageData as? ScrollImage else { return nil }
                    return collectionView.dequeueConfiguredReusableCell(
                        using: scrollCellRegistration,
                        for: indexPath,
                        item: imageData)
            }
        }
        self.dataSource = dataSource
    }
    
    mutating func snapShot(imageData: ImageData) {
        let bannerImages: [BannerImage] = imageData.BannerImages
        let gridImages: [GridImage] = imageData.gridImages
        let scrollImages: [ScrollImage] = imageData.scrollImages
        
        var bannerSnapShot = NSDiffableDataSourceSectionSnapshot<AnyHashable>()
        bannerSnapShot.append(bannerImages)
        
        var gridSnapShot = NSDiffableDataSourceSectionSnapshot<AnyHashable>()
        gridSnapShot.append(gridImages)
        
        var scrollSnapShot = NSDiffableDataSourceSectionSnapshot<AnyHashable>()
        scrollSnapShot.append(scrollImages)
        
        
        self.dataSource?.apply(bannerSnapShot, to: .banner, animatingDifferences: true)
        self.dataSource?.apply(gridSnapShot, to: .grid, animatingDifferences: true)
        self.dataSource?.apply(scrollSnapShot, to: .scroll, animatingDifferences: true)
    }
}
