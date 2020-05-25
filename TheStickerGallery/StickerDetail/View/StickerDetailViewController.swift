//
//  StickerDetailViewController.swift
//  TheStickerGallery
//
//  Created by Renata Faria on 25/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class StickerDetailViewController: UIViewController {

    var sticker: Sticker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView(with: self.sticker)
    }

    @IBOutlet var img: UIImageView!
    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelUse: UILabel!
    @IBOutlet var txtDescription: UITextView!
    
    func configureView(with sticker: Sticker) {
        img.image = sticker.imageRendered
        labelTitle.text = sticker.title + " " + sticker.emoji
        labelUse.text = sticker.use
        txtDescription.text = sticker.summary
    }
}
