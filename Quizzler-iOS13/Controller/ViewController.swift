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
    
    var quizBrain = QuizBrain()
    let totalQuizNumber = 3
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateQuizText()
        //viewDidLoad는 앱 최초 실행 시 1번만 로딩됨
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
               
        timer.invalidate()
        let userAnswer = sender.currentTitle
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if(quizNumber < quiz.count - 1) {
            quizNumber += 1
        } else{
            quizNumber = 0
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuizText), userInfo: nil, repeats: false)
        
       // updateQuizText()
    }
    
    @objc func updateQuizText() {
        questionLabel.text = quiz[quizNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        progressBar.progress = Float(quizNumber + 1) / Float(quiz.count)
    
    }
}
