//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by everis on 11/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmiResult : BMI?
    
    
    
    func getBmiValue() -> String{
    
        return String(format: "%.1f", bmiResult?.value ?? "0.0")
    }
    
    func getAdvice() -> String{
    
        return bmiResult?.advice ?? ""
    }
    
    func getColor() -> UIColor {
    
        return  bmiResult?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    
    mutating func calculateBmi(height:Float,weight:Float) {
        
        let bmiValue = weight / pow(height,2)
        
        if bmiValue < 18.5 {
            bmiResult = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else  if bmiValue < 24.9 {
            bmiResult = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmiResult = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
        }
    }
}
