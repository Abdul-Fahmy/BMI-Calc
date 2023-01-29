//
//  CurrentButton.swift
//  BMI-Calculator
//
//  Created by mac on 20/12/2022.
//

import UIKit

class CurrentButton: UIButton {
    
    override func layoutSubviews(){
            super.layoutSubviews()
            layer.cornerRadius = frame.height / 2
        layer.borderWidth = 1
        
        
    }



}
