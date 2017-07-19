//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by DevilWang on 07/19/2017.
//  Copyright (c) 2017 DevilWang. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {

    var isBlinking = false;
    let blinkingLabel = BlinkingLabel(frame:CGRect(origin:CGPoint.init(x:10,y:20), size:CGSize.init(width:200,height:30)))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //setup the blinkingLabel
        blinkingLabel.text = "I blink"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20.0)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        //create a UIButton to toggle the blinking
        let toggleButton = UIButton.init(frame: CGRect(origin:CGPoint.init(x: 10, y: 60),
                                                       size:CGSize.init(width: 125, height: 30)))
        toggleButton.setTitle("Toggle Blinkiing", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(ViewController.ToggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    
    }
    
    func ToggleBlinking() {
        if isBlinking {
            blinkingLabel.stopBlinking()
        }
        else{
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

