//
//  ViewController.swift
//  Tippr
//
//  Created by user143191 on 8/10/18.
//  Copyright © 2018 user143191. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var twoPeople: UILabel!
    @IBOutlet weak var threePeople: UILabel!
    @IBOutlet weak var fourPeople: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    //@IBOutlet weak var tipControl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        billField.becomeFirstResponder()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onTap(_ sender: AnyObject) {
        
        view.endEditing(true)
        
    }
    
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        self.billField.alpha = 0.8
        
        UIView.animate(withDuration: 0.2, animations: {self.billField.alpha = 1})
        
        let tipPercentages = [0.18, 0.2, 0.25]
        let defaults = UserDefaults.standard
        let tpIndex = defaults.integer(forKey: "tipCalcIndex")
        
        let bill = Double(billField.text!) ?? 0
        
    //    let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let tip = bill * tipPercentages[tpIndex]
        let total = bill + tip
        let twoParts = total/2
        let threeParts = total/3
        let fourParts = total/4
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        twoPeople.text = String(format: "$%.2f",twoParts)
        threePeople.text = String(format: "$%.2f",threeParts)
        fourPeople.text = String(format: "$%.2f",fourParts)
        
    }
}

