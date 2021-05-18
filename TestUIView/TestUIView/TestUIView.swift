//
//  TestUIView.swift
//  TestUIView
//
//  Created by Igor Polousov on 22.03.2021.
//

import UIKit

@IBDesignable class TestUIView: UIView {
    
    @IBInspectable var borderColor: UIColor = .white{
       didSet {
           layer.borderColor = borderColor.cgColor
       }
    }

    @IBInspectable var borderWidth: CGFloat = 2.0 {
       didSet {
           layer.borderWidth = borderWidth
       }
    }

    @IBInspectable var cornerRadius: CGFloat = 10.0 {
       didSet {
           layer.cornerRadius = cornerRadius
       }
    }

    @IBInspectable var shadowRadius: CGFloat {
       get {
           return layer.shadowRadius
       }
       set {
           layer.shadowColor = UIColor.black.cgColor
           layer.shadowOffset = CGSize(width: 0, height: 2)
           layer.shadowOpacity = 0.4
           layer.shadowRadius = shadowRadius
       }

     }

   override public func layoutSubviews() {
       super.layoutSubviews()
       clipsToBounds = true
      }
}
