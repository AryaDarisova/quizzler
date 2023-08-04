//
//  QuizBrain.swift
//  quizzler
//
//  Created by Daria Arisova on 05.08.2023.
//

import Foundation

struct QuizBrain {
    /*let quiz = [
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
    ]*/
    let quiz = [
        Question(question: "Любимое блюдо Наруто?", answerOptions: ["Данго", "Рамен", "Карри"], correctAnswer: "Рамен"),
        Question(question: "Какое значение имеет кандзи на левой стороне лба у Гаары?", answerOptions: ["Жизнь", "Смерть", "Любовь"], correctAnswer: "Любовь"),
        Question(question: "Как называлась организация которой управлял Данзо Шимура?", answerOptions: ["Анбу Листа", "Дерево Анбу", "Корень Анбу"], correctAnswer: "Корень Анбу"),
        Question(question: "Какую деревню основал Орочимару?", answerOptions: ["Деревня Скрытой Луны", "Деревня Скрытого Ключа", "Деревня Скрытого Звука"], correctAnswer: "Деревня Скрытого Звука"),
        Question(question: "Какое прозвище имел Какаши Хатаке?", answerOptions: ["Белый клык Конохи", "Клонирующий ниндзя", "Копирующий ниндзя"], correctAnswer: "Копирующий ниндзя"),
        Question(question: "Кто дал Джирайе, Цунаде и Орочимару звание Великих Саннинов Листа?", answerOptions: ["Хирузен Сарутоби", "Ханзо Саламандра", "Данзо Шимура"], correctAnswer: "Ханзо Саламандра"),
        Question(question: "Джинчурики какого хвостатого был Гаара?", answerOptions: ["Мататаби", "Шукаку", "Гьюки"], correctAnswer: "Шукаку"),
        Question(question: "Кто находился внутри Спирального Зецу во время Четвёртой Мировой войны шиноби?", answerOptions: ["Клон Хаширамы", "Ямато", "Обито Учиха"], correctAnswer: "Ямато"),
        Question(question: "Какого цвета был Сусано Мадары Учихи?", answerOptions: ["Красный", "Фиолетовый", "Синий"], correctAnswer: "Синий"),
        Question(question: "Какое прозвище имел Минато Намиказе?", answerOptions: ["Жёлтый клык Конохи", "Желтая молния Конохи", "Жёлтый лис Конохи"], correctAnswer: "Желтая молния Конохи"),
        Question(question: "На сколько частей был разделен Десятихвостый?", answerOptions: ["8", "9", "10"], correctAnswer: "9"),
        Question(question: "Кто был третьим братом Хагоромо и Хамуры?", answerOptions: ["Белый Зецу", "Чёрный Зецу", "Момошики Ооцуцуки"], correctAnswer: "Чёрный Зецу"),
        Question(question: "Какое прозвище получил в будущем Хаширама Сенджу?", answerOptions: ["Бог Чакры", "Бог Шиноби", "Бог Мира"], correctAnswer: "Бог Шиноби"),
        Question(question: "Предками каких кланов стали Индра и Ашура?", answerOptions: ["Учиха и Узумаки", "Учиха и Сенджу", "Узумаки и Сенджу"], correctAnswer: "Учиха и Сенджу"),
        Question(question: "Кто является создателем Техники Нечестивого Воскрешения?", answerOptions: ["Тобирама Сенджу", "Хаширама Сенджу", "Орочимару"], correctAnswer: "Тобирама Сенджу"),
        Question(question: "В какой стране жили самураи?", answerOptions: ["Страна Самураев", "Страна Металла", "Страна Железа"], correctAnswer: "Страна Железа"),
        Question(question: "Как назывался план разработанный Мадарой Учихой для прекращения войн во всем мире?", answerOptions: ["Бесконечное Цукиёми", "Глаз Луны", "Ринне Шаринган"], correctAnswer: "Глаз Луны"),
        Question(question: "В какой корпус входил Дейдара?", answerOptions: ["Корпус Сапёров", "Корпус подрывников", "Корпус взрывателей"], correctAnswer: "Корпус подрывников")
    ]
    var questionNum = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if (userAnswer == quiz[questionNum].correctAnswer) {
            incScore()
            
            return true
        }
        
        return false
    }
    
    func getQuestionText() -> String {
        return quiz[questionNum].question
    }
    
    func getAnswerOptions() -> [String] {
        return quiz[questionNum].answerOptions
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
