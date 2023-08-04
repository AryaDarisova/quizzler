//
//  ViewController.swift
//  quizzler
//
//  Created by Daria Arisova on 04.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let isCorrect = quizBrain.checkAnswer(userAnswer)
        
        sender.backgroundColor = isCorrect ?
            UIColor(red: 2/255, green: 137/255, blue: 75/255, alpha: 1.0) :
            UIColor(red: 223/255, green: 54/255, blue: 45/255, alpha: 1.0)
        
        quizBrain.incQuestionNum()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        if quizBrain.isEndOfQuiz() {
            let alert = UIAlertController(title: "Test completed!", message: "This is your score: \(quizBrain.getScore())/\(quizBrain.getQustionsCount())", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            quizBrain.resetQuiz()
        }
        
        let answerOptions = quizBrain.getAnswerOptions()
        
        answer1.backgroundColor = UIColor.clear
        answer2.backgroundColor = UIColor.clear
        answer3.backgroundColor = UIColor.clear
        answer1.setTitle(answerOptions[0], for: .normal)
        answer2.setTitle(answerOptions[1], for: .normal)
        answer3.setTitle(answerOptions[2], for: .normal)
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
}

