//
//  DetailViewController.swift
//  CAExample
//
//  Created by zhongzhendong on 4/12/16.
//  Copyright © 2016 zhongzhendong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var animationType: AnimationType?
    
    override func viewDidLoad() {
        if let animationType = self.animationType {
            switch animationType {
            case .Keyframe:
                keyFrameAnimation()
                break
            }
        }
    }
    
    func keyFrameAnimation() {
        let redView = UIView()
        redView.frame = CGRectMake(100, 100, 100, 100)
        redView.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(redView)
        
        UIView.animateKeyframesWithDuration(2, delay: 0, options: [], animations: {
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0.25, animations: { 
                redView.center.x += 200
            })
        }, completion: nil);
    }
}
