//
//  ViewController.swift
//  googlemap
//
//  Created by elva wang on 11/10/17.
//  Copyright © 2017 elva wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var powerValue: Float = 0.00
    @IBOutlet weak var powerSlider: UISlider! {
        didSet{
            powerSlider.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
        }
    }

    @IBOutlet weak var label: UILabel!
    @IBAction func powerSliderValue(_ sender: UISlider) {
        print("slider working xxxxxxxx, the value is \(Int(sender.value))")
        powerValue = sender.value
        label.text = "\(powerValue)"

    }
    
    @IBAction func powerUP(_ sender: UIButton) {
        powerValue = powerValue * powerValue
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

