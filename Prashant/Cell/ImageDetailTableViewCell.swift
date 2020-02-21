//
//  ImageDetailTableViewCell.swift
//  TemplateProject
//
//  Created by apple on 21/02/20.
//  Copyright © 2020 Confidosoft. All rights reserved.
//

import UIKit

class ImageDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var ivUploader: UIImageView!
    @IBOutlet weak var lblUploderName: UILabel!
    @IBOutlet weak var lblUploaderId: UILabel!
    @IBOutlet weak var ivMainImage: UIImageView!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblDecri: UILabel!
    @IBOutlet weak var viewHeader: UIView!
    @IBOutlet weak var viewImage: UIView!
    
    func setData(data: CSImage)  {
        if let url = URL(string: data.user.profileImage.large ?? "") {
            ivUploader.kf.setImage(with: url)
        }
        if let url = URL(string: data.urls.regular ?? "") {
            ivMainImage.kf.setImage(with: url)
            ivMainImage.kf.indicatorType = .activity
            ivMainImage.kf.setImage(
                with: url,
                placeholder: UIImage(named: "placeholderImage"),
                options: [
                    .transition(.fade(1)),
                    .cacheOriginalImage
                ])
            {
                result in
                switch result {
                case .success(let value):
                    print("Task done for: \(value.source.url?.absoluteString ?? "")")
                case .failure(let error):
                    print("Job failed: \(error.localizedDescription)")
                }
            }
        }
        
        lblUploderName.text = data.user.name
        lblUploaderId.text = data.user.username
        lblLocation.text = data.user.location
        lblDecri.text = data.altDescription
    }

}
