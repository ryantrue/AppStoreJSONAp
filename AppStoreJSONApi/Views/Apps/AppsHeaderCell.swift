//
//  AppsHeaderCell.swift
//  AppStoreJSONApi
//
//  Created by Rayen on 08.10.2021.
//

import UIKit

class AppsHeaderCell: UICollectionViewCell {
    
    let companyLabel = UILabel(text: "Facebook", font: .boldSystemFont(ofSize: 12))
    let tittleLabel = UILabel(text: "Keeping up with friends is faster than ever", font: .boldSystemFont(ofSize: 24))
    
    let imageView = UIImageView(cornerRadius: 8)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        companyLabel.textColor = .blue
        tittleLabel.numberOfLines = 2
        
        let stackView = VerticalStackView(arrangedSubviews: [companyLabel, tittleLabel, imageView], spacing: 12)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 16, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
