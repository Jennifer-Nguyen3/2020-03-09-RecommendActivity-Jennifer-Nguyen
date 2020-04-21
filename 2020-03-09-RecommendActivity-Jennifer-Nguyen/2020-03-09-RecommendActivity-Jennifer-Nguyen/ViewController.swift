//
//  ViewController.swift
//  2020-03-09-RecommendActivity-Jennifer-Nguyen
//
//  Created by Jennifer Nguyen on 3/9/20.
//  Copyright © 2020 Jennifer Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tempTextField: UITextField!
    
    
    @IBOutlet weak var activityLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recommendButtonClicked(_ sender: UIButton) {
        //1. we need to know what is the temperature?
        let tempString = tempTextField.text!
        let tempInt = Int (tempString)
        var recommendedActivity = ""
        
        //let tempInt = Int (tempTextField.text!)
        
        //2. based on the temperature, using if-else statement to determine the action
        if tempInt! >= 80 {
            recommendedActivity = "Swimming"
        }
        else if tempInt! >= 60 {
            recommendedActivity = "Tennis"
        }
        else if tempInt! >= 40 {
            recommendedActivity = "Running"
        }
        else {
            recommendedActivity = "Skiing"
        }
        
        //3. insert the action into the action label
        activityLabel.text = "Activity: \(recommendedActivity)"
        
        
    }
    

}

