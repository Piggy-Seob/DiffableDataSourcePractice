//
//  CollectionViewRegistrator.swift
//  DiffableDataSourcePractice
//
//  Created by 박진섭 on 2022/07/25.
//

import UIKit

class CollectionViewRegistrator {
    
    func makeBannerCellRegister() -> UICollectionView.CellRegistration<BannerCell, BannerImage> {
        UICollectionView.CellRegistration.init { cell, indexPath, banner in
            cell.config(banner.imageURL)
        }
    }
    
    func makeGridCellRegister() -> UICollectionView.CellRegistration<GridCell, GridImage> {
        UICollectionView.CellRegistration.init { cell, indexPath, grid in
            cell.config(grid.imageURL)
        }
    }
    
    func makeScrollCellRegister() -> UICollectionView.CellRegistration<ScrollCell, ScrollImage> {
        UICollectionView.CellRegistration.init { cell, indexPath, scroll in
            cell.config(scroll.imageURL)
        }
    }
}
