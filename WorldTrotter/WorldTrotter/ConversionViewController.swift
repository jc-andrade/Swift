//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Julio Andrade on 5/11/16.
//  Copyright © 2016 Julio Andrade. All rights reserved.
//

import UIKit

class ConversionViewControlller: UIViewController
{
    /****************************
     *       IB Outlets         *
     *****************************/
    
    @IBOutlet var celsiusLabel: UILabel!    // Create outlet for celsiusLabel
    @IBOutlet var textField: UITextField! // Declare outlet to reference text field

    /****************************
     *       IB Actions         *
     *****************************/
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField)    // Create function that changes celsiusLabel to whatever textField says.
    {
        if let text = textField.text, value = Double(text) { // Check if there's text and can be represented by a double
            fahrenheitValue = value
        }
        else {
            fahrenheitValue = nil
        }
        
    } // fahrenheitFieldEditingChanged function
    
    // Function that makes keyboard go away by using resignFirstResponder method
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder();
    }
    
    /****************************
    *       Number formatter    *
    *****************************/
    // Used to customer the display of a number.
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    /****************************
     *       variables          *
     *****************************/
    
    var fahrenheitValue: Double? {
        didSet {
            updateCelsiusLabel()
        }
    }// optional double for the Fahrenheit value
    
    // Create celsiusValue [optional] computed from fahrenheitValue double above
    var celsiusValue: Double? {
        if let value = fahrenheitValue { // If there's a value
            return (value - 32) * (5/9) // Convert
        } else {
            return nil
        }
    }

    /****************************
     *       Regular functions  *
     *****************************/
    
    func updateCelsiusLabel() {
        if let value = celsiusValue {
            celsiusLabel.text = numberFormatter.stringFromNumber(value) // Modified to use numberFormatter declared up top
        } else {
            celsiusLabel.text = "???"
        }
    }
}