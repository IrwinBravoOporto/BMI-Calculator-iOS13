//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by everis on 11/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet var background: UIView!
    @IBOutlet weak var adviceText: UILabel!
    
    var bmiValue:String?
    var advice:String?
    var color:UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmiValue
        background.backgroundColor = color
        adviceText.text = advice
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
