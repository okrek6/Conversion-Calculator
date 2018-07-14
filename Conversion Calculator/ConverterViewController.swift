//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Brendan Krekeler on 7/13/18.
//  Copyright © 2018 Brendan Krekeler. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    var converters = [Converters(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),Converters(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
              Converters(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
              Converters(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    
    

    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
