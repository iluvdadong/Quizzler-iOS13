//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [ ["1 + 1 = 2", "True"],
                 ["1 > 2", "False"],
                 ["1 + 1 = 창문", "True"]
                ]
    
    let totalQuizNumber = 3
    var quizNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateQuizText()
        //viewDidLoad는 앱 최초 실행 시 1번만 로딩됨
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
               
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[quizNumber][1]
        
        if(userAnswer == actualAnswer) {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        if(quizNumber < quiz.count - 1) {
            quizNumber += 1
        } else{
            quizNumber = 0
        }
        updateQuizText()
    }
    
    func updateQuizText() {
        questionLabel.text = quiz[quizNumber][0]
    }
}

