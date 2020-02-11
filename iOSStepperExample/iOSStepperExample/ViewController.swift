//
//  ViewController.swift
//  iOSStepperExample
//
//  Created by apple on 11/02/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var labelOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperOutlet.wraps = true
        stepperOutlet.autorepeat = true
        stepperOutlet.maximumValue = 20
        stepperOutlet.stepValue = 2
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func stepperValueChange(_ sender: UIStepper) {
        labelOutlet.text = Int(sender.value).description
    }
    

}

