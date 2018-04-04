//
//  TimelineCollectionViewCell.swift
//  PilkadaJateng
//
//  Created by PondokiOS on 3/29/18.
//  Copyright © 2018 PondokiOS. All rights reserved.
//

import UIKit

class TimelineCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setPost(_ post: TimelinePost) {
        usernameLabel.text = post.userName
        thumbnailImageView.image = post.image
        captionLabel.text = post.caption
        let likeImage = post.isLikedByCurrentUser ? #imageLiteral(resourceName: "like_filled_50") : #imageLiteral(resourceName: "like_50") // #imageLiteral
        likeButton.setImage(likeImage, for: .normal)
    }
}
