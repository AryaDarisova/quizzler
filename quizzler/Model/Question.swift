//
//  Question.swift
//  quizzler
//
//  Created by Daria Arisova on 04.08.2023.
//

import Foundation

struct Question {
    let question: String
    let answerOptions: [String]
    let correctAnswer: String
    
    init(question: String, answerOptions: [String], correctAnswer: String) {
        self.question = question
        self.answerOptions = answerOptions
        self.correctAnswer = correctAnswer
    }
}
