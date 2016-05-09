//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Julio Andrade on 5/8/16.
//  Copyright © 2016 Julio Andrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creates a CGRect; a structure that contains the location and dimensions of a rectangle
        // * x, y, width and heigth are exactly what they mean in reference to UIView
        // They are also not in pixels, they are in points (to support mult. displays)
        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
        let firstView = UIView(frame: firstFrame)
        firstView.backgroundColor = UIColor.blueColor()
        view.addSubview(firstView)
        
        // Adding second instance of UIView with diff frame and backgorund color
        let secondFrame = CGRect(x: 20, y: 30, width: 50, height: 50)
        let secondView = UIView(frame: secondFrame)
        secondView.backgroundColor = UIColor.greenColor()
        
        // Create secondView frame in REFERENCE TO FIRST VIEW
        firstView.addSubview(secondView)
    }
    
}

