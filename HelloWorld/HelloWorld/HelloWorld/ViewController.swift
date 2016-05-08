//
//  ViewController.swift
//  HelloWorld
//
//  Created by Julio Andrade on 12/16/15.
//  Copyright © 2015 Julio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMessage () { // Expose the method to Interface Builder using the @IBAction keyword. 
        let alertController = UIAlertController(title: "Welcome to my first App", message: "Hello World!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

