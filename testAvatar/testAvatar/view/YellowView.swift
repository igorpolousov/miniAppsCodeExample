//
//  YellowView.swift
//  testAvatar
//
//  Created by Igor Polousov on 18.03.2021.
//

import UIKit

@IBDesignable class YellowView: UIView {

    let imageView = UIImageView()
    
    @IBInspectable var image: UIImage?{
        didSet{
            addImage()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override func prepareForInterfaceBuilder() {
            super.prepareForInterfaceBuilder()
            setup()
        }
        
        func setup () {
            imageView.frame = CGRect(x: 0, y: 0, width: 240, height: 199)
            imageView.contentMode = .scaleAspectFit
            addSubview(imageView)
        }
        
    func addImage() {
            imageView.image = image
        }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
