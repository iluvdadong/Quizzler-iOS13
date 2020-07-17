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
    
    let quiz = ["베뉴 VS 셀토스" ,
                "베뉴 VS 코나",
                "베뉴 VS 티볼리"]
    
    var quizNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateQuizText()
        //viewDidLoad는 앱 최초 실행 시 1번만 로딩됨
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        quizNumber += 1
        updateQuizText()
        
    }
    
    func updateQuizText() {
        questionLabel.text = quiz[quizNumber]
    }
}

