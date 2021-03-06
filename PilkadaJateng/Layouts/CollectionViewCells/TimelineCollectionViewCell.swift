//
//  TimelineCollectionViewCell.swift
//  PilkadaJateng
//
//  Created by PondokiOS on 3/29/18.
//  Copyright © 2018 PondokiOS. All rights reserved.
//

import UIKit
import Kingfisher

@IBDesignable
class TimelineCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    /// If index is odd : Gray
    /// else index is even : White
    /// - Parameter index: Index of tableviewcell
    func setColor(for index: Int) {
        backgroundColor = .white
    }
    
    func setPost(_ post: TimelinePost) {
        usernameLabel.text = post.userName
        
        let p = Bundle.main.path(forResource: "loader", ofType: "gif")!
        let data = try! Data(contentsOf: URL(fileURLWithPath: p))
        
        thumbnailImageView.kf.indicatorType = .image(imageData: data)
        thumbnailImageView.kf.indicator?.startAnimatingView()
        
        thumbnailImageView.kf.setImage(with: URL(string: post.imageUrl))
        captionLabel.text = post.caption
        let likeImage = post.isLikedByCurrentUser ? #imageLiteral(resourceName: "like_red_50") : #imageLiteral(resourceName: "like_50") // #imageLiteral
        likeButton.setImage(likeImage, for: .normal)
    }
}
