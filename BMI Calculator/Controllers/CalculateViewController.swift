//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var valueHeight: UILabel!
    @IBOutlet weak var valueWeight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weigthSlider: UISlider!
    
    
    var calculateBrain = CalculatorBrain()
    
    var changedValueHeight = ""
    var changedValueWeigth = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func hightSliderChanged(_ sender: UISlider) {
        
        changedValueHeight = String(format: "%.2f", sender.value)
        
        valueHeight.text = "\(changedValueHeight)m"
    
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
    
        changedValueWeigth = String(format: "%.0f", sender.value)
        
        valueWeight.text = "\(changedValueWeigth)kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        

       calculateBrain.calculateBmi(height:heightSlider.value,weight:weigthSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculateBrain.getBmiValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
            
            
            
        }
    }
    
    
    
}

