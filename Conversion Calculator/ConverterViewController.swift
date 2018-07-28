//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Brendan Krekeler on 7/13/18.
//  Copyright © 2018 Brendan Krekeler. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!

    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputDisplay.placeholder = "°C"
        inputDisplay.placeholder = "°F"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func convert(_ sender: Any) {
    
        let alert = UIAlertController(title: "Choose conversion", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.placeholder = "°C"
            self.inputDisplay.placeholder = "°F"
            self.currentIndex = 0
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.placeholder = "°F"
            self.inputDisplay.placeholder = "°C"
            self.currentIndex = 1
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.placeholder = "km"
            self.inputDisplay.placeholder = "mi"
            self.currentIndex = 2
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertAction.Style.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.placeholder = "mi"
            self.inputDisplay.placeholder = "km"
            self.currentIndex = 3
        }))
        self.present(alert, animated: true, completion: nil)
}
    @IBAction func buttonTapped(_ sender: UIButton) {
        inputDisplay.text?.append(sender.currentTitle!)
        updateTextField()
        }
    
    @IBAction func clearTapped(_ sender: UIButton) {
            inputDisplay.text = nil
            outputDisplay.text = nil
        }
    
    @IBAction func toggleSign(_ sender: UITextField) {
        if let text = inputDisplay.text,
            var inputAsDouble = Double(text) {
            inputAsDouble *= -1
            inputDisplay.text = "\(inputAsDouble)"
            updateTextField()
        } else {
            inputDisplay.text = "-"
            outputDisplay.text = "-"
        }
    }
    
func milesToKilometers(_ miles: Double) -> Double {
    return 1.61 * miles
}

func kilometersToMiles(_ kilometers: Double) -> Double {
    return 0.62 * kilometers
}

func cToF(_ celcius: Double) -> Double {
    return celcius * (9/5) + 32
}

func fToC(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * (5/9)
}

func updateTextField() {
    
    if let text = inputDisplay.text,
        let input = Double(text) {
        
        var output: Double
        
        switch currentIndex {
        case 0:
            output = fToC(input)
        case 1:
            output = cToF(input)
        case 2:
            output = milesToKilometers(input)
        case 3:
            output = kilometersToMiles(input)
        default:
            return
        }
        
        outputDisplay.text = "\(output)"
        
        }
    
    }

}

