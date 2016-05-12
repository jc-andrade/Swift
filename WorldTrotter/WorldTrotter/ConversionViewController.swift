//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Julio Andrade on 5/11/16.
//  Copyright © 2016 Julio Andrade. All rights reserved.
//
import UIKit
// Page 175

// Gets current hour and minute so that we can change background color depending on time
let hour = NSCalendar.currentCalendar().component(.Hour, fromDate: NSDate())
let minute = NSCalendar.currentCalendar().component(.Minute, fromDate: NSDate())

class ConversionViewControlller: UIViewController, UITextFieldDelegate // the UITextFieldDelegate declares that ConversionViewController conforms to the UITExtFieldDelegate protocolor
{
    // override viewDidLoad to print a statement to the console
    override func viewDidLoad()
    {
        // Always call the super implementation of viewDidLoad
        super.viewDidLoad()
        print("ConversionViewController loaded its view.")
    }
    
    override func viewWillAppear(animated: Bool)
    {
        // If evening [defined as 5:30pm]
        if (hour >= 17 && minute >= 30) {
        self.view.backgroundColor = UIColor.lightGrayColor()
        } else {/*defaultColor*/}
    }
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
    
    // Supposed to print text fields current text as well as replacement string, Return true for easiness
    // Also supposed to not let us put more than 1 decimal in at a time.
    func textField(textField: UITextField,
        shouldChangeCharactersInRage range: NSRange,
        replacementString string: String) -> Bool {

        let numberOnly = NSCharacterSet.init(charactersInString: "0123456789")
        let stringFromTextField = NSCharacterSet.init(charactersInString: string)
        let strValid = numberOnly.isSupersetOfSet(stringFromTextField)
        return strValid
        // ------------------------------------------- This dont work atm
            
    }
}