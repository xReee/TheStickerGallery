//
//  Sticker.swift
//  TheStickerGallery
//
//  Created by Renata Faria on 24/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

struct Sticker: Decodable {
    let title: String!
    let emoji: String!
    let use: String!
    let summary: String!
    let image: String!
    
    var imageRendered: UIImage? {
        return UIImage(named: image)
    }
}
