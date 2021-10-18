//
//  AppRowCell.swift
//  AppStoreJSONApi
//
//  Created by Rayen on 08.10.2021.
//

import UIKit

class AppRowCell: UICollectionViewCell {
    
    let imageView = UIImageView(cornerRadius: 8)
    
    let nameLabel = UILabel(text: "App name", font: .boldSystemFont(ofSize: 20))
    let companyLabel = UILabel(text: "Company name", font: .boldSystemFont(ofSize: 12))
    let getbutton = UIButton(title: "GET")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.constrainWidth(constant: 64)
        imageView.constrainHeight(constant: 64)
        
        nameLabel.numberOfLines = 2
        
        getbutton.backgroundColor = UIColor(white: 0.95, alpha: 1)
        getbutton.constrainWidth(constant: 80)
        getbutton.constrainHeight(constant: 32)
        getbutton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        getbutton.layer.cornerRadius = 32 / 2
        
        let stackView = UIStackView(arrangedSubviews: [imageView, VerticalStackView(arrangedSubviews: [nameLabel, companyLabel], spacing: 4), getbutton])
        stackView.spacing = 16
        stackView.alignment = .center
        
        addSubview(stackView)
        
        stackView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
