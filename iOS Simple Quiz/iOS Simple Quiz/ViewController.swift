//
//  ViewController.swift
//  iOS Simple Quiz
//
//  Created by Julio Andrade on 5/7/16.
//  Copyright © 2016 Julio Andrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    // We will want to load the first question from the array, and use it to replace ??? placeholder. 
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    // Add two label outlets that will communicate in the Interface Builder
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    // Array of questions
    let questions: [String] = ["From what is cognac made?",
                               "What is 7+7?",
                               "What is the capital of Venezuela?"]
    
    let answers: [String] = ["Grapes",
                             "14",
                             "Caracas"]
    
    // Integer keeps track of what question the user is on.
    var currentQuestionIndex: Int = 0
    
    // Create two actions (functions) that will be triggered when UIbutton is tapped in Interface Builder
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentQuestionIndex // Increase track of question
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}

