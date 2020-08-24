//
//  ViewController.swift
//  tip
//
//  Created by Angela Xie on 8/23/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabe: UILabel!
    @IBOutlet weak var subtotalLabel: UILabel!
    @IBOutlet weak var peopleSegementControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //1. calculate the tip amount
        let bill = Double(billAmountTextField.text!) ?? 0
        let billPercentage = [0.1, 0.15, 0.18, 0.2]
        let peopleCount = [2.0,3.0,4.0,5.0]
        
        let tipAmount = bill * billPercentage[tipControl.selectedSegmentIndex]
        let total = tipAmount + bill
        
        let subtotal = total / peopleCount[peopleSegementControl.selectedSegmentIndex]
        
        //2. update words in the second part
        tipPercentageLabel.text = String(format: "$%0.2f", tipAmount)
        totalLabe.text = String(format: "$%0.2f", total)
        subtotalLabel.text = String(format: "$%0.2f", subtotal)
    }
}

