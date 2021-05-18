//
//  ViewController.swift
//  DoubleTapCounter
//
//  Created by Igor Polousov on 20.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named: "Forest")
        return imageView
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0,
                                 width: view.frame.size.width,
                                 height: view.frame.size.height)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didDoubleTap(_ :)))
        
        tapGesture.numberOfTapsRequired = 2
        imageView.addGestureRecognizer(tapGesture)
        
    }
    @objc private func didDoubleTap( _ gesture: UITapGestureRecognizer){
        guard let gestureView = gesture.view else {return}
        
        let size = gestureView.frame.size.width/4
        let heart = UIImageView(image: UIImage(named: "heart"))
        heart.frame = CGRect(x: (gestureView.frame.size.width - size)/2,
                             y: (gestureView.frame.size.height - size)/2,
                             width: size,
                             height: size)
        heart.tintColor = .white
        heart.center = gestureView.center
        gestureView.addSubview(heart)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            UIView.animate(withDuration: 1, animations: {
                heart.alpha = 0
            }, completion: { done in
                if done {
                    heart.removeFromSuperview()
                    //  В том месте можно добавить код для счетчика лайков
                }
            })
        })
    }

}

