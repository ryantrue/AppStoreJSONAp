//
//  ReviewRowCellId.swift
//  AppStoreJSONApi
//
//  Created by Rayen on 18.10.2021.
//

import UIKit

class ReviewRowCell : UICollectionViewCell {
        
    let rewiewsController = RewiewsController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        addSubview(rewiewsController.view)
        rewiewsController.view.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
