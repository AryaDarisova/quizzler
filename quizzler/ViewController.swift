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
    
    let quiz = [
        Question(question: "Какаши был членом Анбу?", answer: true),
        Question(question: "В молодости Итачи стал международным преступником", answer: true),
        Question(question: "Какаши получил шаринган в подарок от Саске?", answer: false),
        Question(question: "Минато был 4-ым хокаге?", answer: true),
        Question(question: "Мать Наруто (Кушина) была из клана Сенджу?", answer: false),
        Question(question: "Наруто - это мультфильм?", answer: false),
        Question(question: "Всего у Пейна было 6 путей?", answer: true),
        Question(question: "Прозвище Минато было \"Белый клык листа\"?", answer: false),
        Question(question: "Обито был учеником Минато?", answer: true),
        Question(question: "Цвет сусано Мадары Учихи - синий?", answer: true)
    ]
    var questionNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle == "True" ? true : false
        
        print("User answer: \(userAnswer) Correct answer: \(quiz[questionNum].answer)")
        
        if userAnswer == quiz[questionNum].answer {
            sender.backgroundColor = UIColor(red: 2/255, green: 137/255, blue: 75/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 223/255, green: 54/255, blue: 45/255, alpha: 1.0)
        }
        
        questionNum += 1
        
        if questionNum < quiz.count {
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        }
    }
    
    @objc func updateUI() {
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
        questionLabel.text = quiz[questionNum].question
        progressBar.progress = Float(questionNum + 1) / Float(quiz.count)
    }
}

