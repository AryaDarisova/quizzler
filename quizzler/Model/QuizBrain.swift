//
//  QuizBrain.swift
//  quizzler
//
//  Created by Daria Arisova on 05.08.2023.
//

import Foundation

struct QuizBrain {
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
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: Bool) -> Bool {
        if (userAnswer == quiz[questionNum].answer) {
            incScore()
            
            return true
        }
        
        return false
    }
    
    func getQuestionText() -> String {
        return quiz[questionNum].question
    }
    
    func getProgress() -> Float {
        return Float(questionNum + 1) / Float(quiz.count)
    }
    
    mutating func incQuestionNum() {
        questionNum += 1
    }
    
    func isEndOfQuiz() -> Bool {
        return !(questionNum < quiz.count)
    }
    
    private mutating func incScore() {
        score += 1
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQustionsCount() -> Int {
        return quiz.count
    }
    
    mutating func resetQuiz() {
        questionNum = 0
        score = 0
    }
}
