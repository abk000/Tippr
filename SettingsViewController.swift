//
//  SettingsViewController.swift
//  Tippr
//
//  Created by Arslan Saeed on 9/13/18.
//  Copyright © 2018 user143191. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var colorTheme: UISegmentedControl!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Settings"
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
