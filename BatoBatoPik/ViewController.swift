//
//  ViewController.swift
//  BatoBatoPik
//
//  Created by Athan Francisco on 2/24/15.
//  Copyright (c) 2015 Athan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var handPickImageView: UIImageView!
    
    let handList: [String] = ["bbp_paper_r","bbp_rock_r","bbp_scissors_r"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent) {
        if motion == .MotionShake {
            self.handPickImageView.image = UIImage(named: "bbp_background_r")
        }
    }

    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if motion == .MotionShake {
            var randomNum = Int(arc4random_uniform(3))
            self.handPickImageView.image = UIImage(named: handList[randomNum])
        }
        
    }
}

	