//
//  StickerListTableViewCell.swift
//  TheStickerGallery
//
//  Created by Renata Faria on 25/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class StickerListTableViewCell: UITableViewCell {
    @IBOutlet var img: UIImageView!
    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelUse: UILabel!
    @IBOutlet var labelDescription: UILabel!
    @IBOutlet var labelEmoji: UILabel!
    
    func setupCell(with sticker: Sticker) {
        self.img.image = sticker.imageRendered
        self.labelTitle.text = sticker.title
        self.labelUse.text = sticker.use
        self.labelDescription.text = sticker.summary
        self.labelEmoji.text = sticker.emoji
    }
    
}
