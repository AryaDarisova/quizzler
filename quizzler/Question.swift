//
//  Question.swift
//  quizzler
//
//  Created by Daria Arisova on 04.08.2023.
//

import Foundation

struct Question {
    let question: String
    let answer: Bool
    
    init(question: String, answer: Bool) {
        self.question = question
        self.answer = answer
    }
}
