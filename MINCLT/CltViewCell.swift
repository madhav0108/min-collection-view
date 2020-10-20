//
//  CltViewCell.swift
//  MINCLT
//
//  Created by madhav sharma on 10/20/20.
//

import UIKit

class CltViewCell: UICollectionViewCell {

    @IBOutlet var cltImage: UIImageView!
    
    static let identifier = "CltViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with image: UIImage) {
        cltImage.image = image
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CltViewCell", bundle: nil)
    }

}
