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
        
        questionNum += 1
        
        if questionNum < quiz.count {
            updateUI()
        }
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNum].question
    }
}

