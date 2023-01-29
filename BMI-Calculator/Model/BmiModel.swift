//
//  BmiModel.swift
//  BMI-Calculator
//
//  Created by mac on 21/12/2022.
//

import Foundation
class BMIModel{
    
    class func getBMI(ForWeight weight : Double, andHeight height : Double) ->Double{
        return weight/((height/100)*(height/100))
        
    }
    
    
    
//    var weight : Int
//    var height : Int
//
//    init (weight:Int, height:Int){
//        self.height = height
//        self.weight = weight
//    }
    
//    func bmi()->Int{
//
//        return weight/(height * height)
//    }
    
}

