//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by park kyung suk on 2017/05/05.
//  Copyright © 2017年 park kyung suk. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPriviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func updateUI(partyRock: PartyRock){
        videoTitle.text = partyRock.videoTitle
        
        //TODO: set image from URL
        
        let imageUrl = URL(string: partyRock.imageURL)
        
        DispatchQueue.global().async {
            
            do {
                let data = try Data(contentsOf: imageUrl!)
                
                DispatchQueue.global().sync {
                  self.videoPriviewImage.image = UIImage(data: data)
                }
                
            } catch {
                // handle error
            }
        }
    }

}
