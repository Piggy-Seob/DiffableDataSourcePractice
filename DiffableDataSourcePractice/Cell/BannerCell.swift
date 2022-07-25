//
//  BannerCell.swift
//  DiffableDataSourcePractice
//
//  Created by 박진섭 on 2022/07/22.
//

import UIKit
import SnapKit
import Kingfisher

class BannerCell: UICollectionViewCell {
    
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config(_ imageURL: String) {
        guard let url = URL(string: imageURL) else { return }
        self.imageView.kf.setImage(with: url)
    }
    
    func setLayout() {
        
        self.addSubview(imageView)

        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
