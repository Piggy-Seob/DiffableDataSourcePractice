//
//  ViewController.swift
//  DiffableDataSourcePractice
//
//  Created by 박진섭 on 2022/07/21.
//

import UIKit
import SnapKit

enum SectionType: Int {
    case banner
    case grid
    case scroll
}

class ViewController: UIViewController {
    
    var dataSourceManager = CollectionViewDataSourceManager()
    let mockImageData = MockDataRepo().mockData()
    
    lazy var collectionView: UICollectionView = {
        guard let layout = self.createLayout() else { return UICollectionView() }
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()
    
    var layoutCreators: [SectionType: SectionLayoutCreator.Type] = [
        .banner: BannerSectionLayoutFactory.self,
        .grid: GridSectionLayoutFactory.self,
        .scroll: ScrollSectionLayoutFactory.self ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionViewLayout()
        setDataSource()
    }
    
    func setDataSource() {
        dataSourceManager.setDataSource(in: collectionView)
        dataSourceManager.snapShot(imageData: mockImageData)
    }
    
    func setCollectionViewLayout() {
        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func createLayout() -> UICollectionViewLayout? {
        UICollectionViewCompositionalLayout { (sectionNumber, _) in
            guard let section = SectionType(rawValue: sectionNumber) else { return nil }
            return self.layoutCreators[section]?.makeSectionLayout()
        }
    }
}

