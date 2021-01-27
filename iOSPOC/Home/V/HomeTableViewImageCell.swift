//
//  HomeTableViewImageCell.swift
//  iOSPOC
//
//  Created by Rahul on 10/07/18.
//  Copyright © 2018 Rahul Goel. All rights reserved.
//

import UIKit

class HomeTableViewImageCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    final func bindCellWithData(img:String) {
        TRGImageCacheManager.shared.downloadImageWith(url: img) { [weak self](img, error) in
            DispatchQueue.main.async {
                self?.imgView?.image = img
            }
        }
    }
    
}
