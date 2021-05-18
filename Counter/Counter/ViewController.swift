//
//  ViewController.swift
//  Counter
//
//  Created by Igor Polousov on 20.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var tapCount: Int = 0
    
    
    @IBAction func pushButton(_ sender: Any) {
        pushQuantity.text = multipleTap()
    }
    
    @IBOutlet weak var pushQuantity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
}
    func multipleTap() -> String{
       tapCount += 1
       print(tapCount)
        return "\(tapCount)"
   }
}
