//
//  ViewController.swift
//  RoundImage
//
//  Created by Igor Polousov on 20.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testView: TestView!
    
    @IBOutlet weak var testImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testView.applyDesign()
        testImageView.applyDesign()
    }
}

extension TestView {
    func applyDesign() {
        self.layer.cornerRadius = self.frame.height / 2
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 10
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        
    }
}

extension UIImageView {
    func applyDesign() {
        self.layer.cornerRadius = self.frame.height / 2
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 10
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        
    }
}
