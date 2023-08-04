//
//  ViewController.swift
//  quizzler
//
//  Created by Daria Arisova on 04.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle == "True" ? true : false
        let isCorrect = quizBrain.checkAnswer(userAnswer)
        
        sender.backgroundColor = isCorrect ?
            UIColor(red: 2/255, green: 137/255, blue: 75/255, alpha: 1.0) :
            UIColor(red: 223/255, green: 54/255, blue: 45/255, alpha: 1.0)
        
        quizBrain.incQuestionNum()
        
        if quizBrain.isEndOfQuiz() {
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
    }
    
    @objc func updateUI() {
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
    }
}

