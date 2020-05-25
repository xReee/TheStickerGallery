//
//  StickerTableViewController.swift
//  TheStickerGallery
//
//  Created by Renata Faria on 24/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class StickerTableViewController: UITableViewController {

    var stickers = [Sticker]()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? StickerDetailViewController
        if let selecterRow = tableView.indexPathForSelectedRow?.row {
            destination?.sticker = stickers[selecterRow]
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadata()
    }
    func loadata() {
        guard let jsonURL = Bundle.main.url(forResource: "sticker", withExtension: "json") else { return }
        do {
            let data = try Data(contentsOf: jsonURL)
            let decoder = JSONDecoder()
            let stickers = try decoder.decode([Sticker].self, from: data)
            self.stickers = stickers
        } catch {
            print(error)
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stickers.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? StickerListTableViewCell else { return UITableViewCell() }
        let currentSticker = stickers[indexPath.row]
        cell.setupCell(with: currentSticker)
        return cell
    }

}

