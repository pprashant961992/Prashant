//
//  ImageCollectionViewCell.swift
//  TemplateProject
//
//  Created by Mitul Nakum on 19/02/20.
//  Copyright © 2020 Confidosoft. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgThumb: UIImageView!
  
    override func layoutSubviews() {
        super.layoutSubviews()
//        self.contentView.addSoftUIEffectForView()
    }
}
