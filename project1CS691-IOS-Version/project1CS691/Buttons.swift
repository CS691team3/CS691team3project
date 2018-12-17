//
//  Buttons.swift
//  project1CS691
//
//  Created by Kenneth Okereke on 12/12/18.
//  Copyright © 2018 Kenneth Okereke. All rights reserved.
//

import UIKit


extension UIButton {
    

func pulsing() {
    let pulse = CASpringAnimation(keyPath: "transform.scale")
    pulse.duration = 0.6
    pulse.fromValue = 0.96
    pulse.toValue = 1.0
    pulse.autoreverses = true
    pulse.repeatCount = 2
    pulse.initialVelocity = 0.5
    pulse.damping = 1.0
    
    layer.add(pulse, forKey: nil)
    
}
}
