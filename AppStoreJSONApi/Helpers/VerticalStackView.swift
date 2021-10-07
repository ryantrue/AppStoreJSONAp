//
//  VerticalStackView.swift
//  AppStoreJSONApi
//
//  Created by Rayen on 07.10.2021.
//

import UIKit

class VerticalStackView: UIStackView {

    init(arrangeSubviews: [UIView], spacing: CGFloat = 0 ) {
        super.init(frame: .zero)
        arrangeSubviews.forEach({addArrangedSubview($0)})
        self.spacing = spacing
        self.axis = .vertical
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
