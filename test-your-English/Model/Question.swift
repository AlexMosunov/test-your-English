//
//  Question.swift
//  test-your-English
//
//  Created by Alex Mosunov on 2/4/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import Foundation


struct Question {
    var question: String
    var answers: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        question = q
        answers = a
        self.correctAnswer = correctAnswer
    }
    
    
}
