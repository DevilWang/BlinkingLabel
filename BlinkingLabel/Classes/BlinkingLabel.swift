//
//  BlinkingLabel.swift
//  Pods
//
//  Created by YuechenWANG on 2017/7/19.
//
//

import UIKit

public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = [.`repeat`,.autoreverse]//|.autoreverse
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
