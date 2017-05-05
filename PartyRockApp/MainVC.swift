//
//  ViewController.swift
//  PartyRockApp
//
//  Created by park kyung suk on 2017/05/02.
//  Copyright © 2017年 park kyung suk. All rights reserved.
//

import UIKit

class MainVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let p1 = PartyRock(imageURL: "https://yt3.ggpht.com/-LEydX3sr14I/AAAAAAAAAAI/AAAAAAAAAAA/QuP-jdZZWkU/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock!!!")
        
        let p2 = PartyRock(imageURL: "https://yt3.ggpht.com/-KaOunkYkbGM/AAAAAAAAAAI/AAAAAAAAAAA/J8En5dobEgI/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IcrbM1l_BoI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Wake me UP")
        
        let p3 = PartyRock(imageURL: "https://yt3.ggpht.com/-LEydX3sr14I/AAAAAAAAAAI/AAAAAAAAAAA/QuP-jdZZWkU/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock!!!")
        
        let p4 = PartyRock(imageURL: "https://yt3.ggpht.com/-LEydX3sr14I/AAAAAAAAAAI/AAAAAAAAAAA/QuP-jdZZWkU/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock!!!")
        
        let p5 = PartyRock(imageURL: "https://yt3.ggpht.com/-LEydX3sr14I/AAAAAAAAAAI/AAAAAAAAAAA/QuP-jdZZWkU/s88-c-k-no-mo-rj-c0xffffff/photo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock!!!")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

}

