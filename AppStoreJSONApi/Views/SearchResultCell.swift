//
//  SearchResultCell.swift
//  AppStoreJSONApi
//
//  Created by Rayen on 06.10.2021.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    let appIconImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.widthAnchor.constraint(equalToConstant: 64).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 64).isActive = true
        iv.layer.cornerRadius = 12
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "App name"
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Photo & Video"
        return label
    }()
    
    let dowloadLabel: UILabel = {
        let label = UILabel()
        label.text = "9.26M"
        return label
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(white: 0.95 , alpha: 1)
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
        button.layer.cornerRadius = 16
        return button
    }()
    
    lazy var screenshot1ImageView =  createScreenshotImageView()
    lazy var screenshot2ImageView =  createScreenshotImageView()
    lazy var screenshot3ImageView =  createScreenshotImageView()
    
    func createScreenshotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        return imageView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        let infoTopStackView = UIStackView(arrangedSubviews: [appIconImageView, VerticalStackView( arrangeSubviews: [nameLabel, categoryLabel, dowloadLabel]), getButton])
        infoTopStackView.spacing = 12
        infoTopStackView.alignment = .center
        
        let screenShotStackView = UIStackView(arrangedSubviews: [screenshot1ImageView, screenshot2ImageView, screenshot3ImageView])
        screenShotStackView.spacing = 12
        screenShotStackView.distribution = .fillEqually
        
        let overallStackView = VerticalStackView(arrangeSubviews: [infoTopStackView, screenShotStackView], spacing: 16)
        
        addSubview(overallStackView)
        overallStackView.fillSuperview(padding: .init(top: 16, left: 16, bottom: 16, right: 16))
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
