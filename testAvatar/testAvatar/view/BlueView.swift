//
//  BlueView.swift
//  testAvatar
//
//  Created by Igor Polousov on 18.03.2021.
//

import UIKit

@IBDesignable class BlueView: UIView {
    
    // 1
       let gradientLayer = CAGradientLayer()
       
       // 2
    @IBInspectable var startColor: UIColor = UIColor.black {
           didSet {
               gradientSetup()
           }
       }

       // 3
    @IBInspectable var midColor: UIColor = UIColor.blue {
            didSet {
                gradientSetup()
            }
        }
        
        // 4
    @IBInspectable var endColor: UIColor = UIColor.white {
            didSet {
                gradientSetup()
            }
        }
        
        // 5
    override func awakeFromNib() {
            super.awakeFromNib()
            setup()
        }
        
        // 6
        override func prepareForInterfaceBuilder() {
            super.prepareForInterfaceBuilder()
            setup()
        }
        
        // 7
        private func setup() {
            layer.addSublayer(gradientLayer)
            gradientSetup()
        }
    // 8
        private func gradientSetup() {
     
        }

        // 9
        override func layoutSubviews() {
            gradientLayer.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
