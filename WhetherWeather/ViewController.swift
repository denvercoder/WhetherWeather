//
//  ViewController.swift
//  WhetherWeather
//
//  Created by Timothy Myers on 10/2/16.
//  Copyright © 2016 Denver Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var cityTextBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submit(_ sender: AnyObject) {
        
        cityTextBox.text = ""
        
        let summary = "Mostly dry. Warm (max 81°F on Sun afternoon, min 45°F on Mon night). Winds increasing (light winds from the WSW on Sun morning, fresh winds from the SW by Mon afternoon)."
        
        result.text = cityTextBox.text! + " 1 – 3 Day Weather Forecast Summary: " + summary

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

