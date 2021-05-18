//
//  ViewController.swift
//  LikeHeartButton
//
//  Created by Igor Polousov on 22.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
 
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var heartImage: UIImageView!
    @IBAction func heartButton(_ sender: Any) {
        heartOn = !heartOn
        updateHeart()
        
        counter.text = "\(tapCount)"
    }
    
    var heartOn = true
    var tapCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heartImage.tintColor = UIColor.systemBlue
        heartImage.image = UIImage.init(systemName: "heart")
        counter.textColor = UIColor.systemBlue
        counter.text = "0"
    }
    

    func updateHeart(){
        if heartOn {
            heartImage.tintColor = UIColor.systemBlue
            heartImage.image = UIImage.init(systemName: "heart")
            counter.textColor = UIColor.systemBlue
            tapCount += 1
            
        } else {
            heartImage.tintColor = UIColor.systemPink
            heartImage.image = UIImage.init(systemName: "heart.fill")
            counter.textColor = UIColor.systemPink
            tapCount += 1
            
        }
    }
    
}

