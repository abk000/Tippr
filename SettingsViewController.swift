//
//  SettingsViewController.swift
//  Tippr
//
//  Created by Arslan Saeed on 9/13/18.
//  Copyright © 2018 user143191. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var colorTheme: UISegmentedControl!
    @IBOutlet weak var defaultPercent: UIPickerView!
    
    let percents = ["18%", "20%", "25%"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return percents[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return percents.count
    }
    
    @IBAction func saveChanges(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        let index =
            defaultPercent.selectedRow(inComponent: 0)
        defaults.set(index, forKey: "tipCalcIndex")
        defaults.synchronize()
    }
    
    
   //     func setDefault(){
     //       let defaults = UserDefaults.standard
            
       //     defaults.set(defaultPercent.selectedRow(inComponent: 1), forKey: "tipCalcIndex")
            
         //   defaults.synchronize()
        
            
        //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        
        let defaults1 = UserDefaults.standard
        let defIndex = defaults1.integer(forKey: "tipCalcIndex")
        
        defaultPercent.selectRow(defIndex, inComponent: 0, animated: true)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
