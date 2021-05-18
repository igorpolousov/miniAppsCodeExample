//
//  ViewController.swift
//  Guided project - Light
//
//  Created by Igor Polousov on 04.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
   
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI(){
        if lightOn {
            view.backgroundColor = .blue
        } else {
            view.backgroundColor = .cyan
        }
    }
}

