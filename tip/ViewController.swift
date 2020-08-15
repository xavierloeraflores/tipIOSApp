//
//  ViewController.swift
//  tip
//
//  Created by Xavier Loera Flores on 8/14/20.
//  Copyright © 2020 Xavier Loera Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("hello")
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        
        let tipPecentage = [0.15, 0.18, 0.2]
        
        
        let tip = bill * tipPecentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
    
    
    
    
}

