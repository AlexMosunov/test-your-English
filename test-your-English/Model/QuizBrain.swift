//
//  QuizBrain.swift
//  test-your-English
//
//  Created by Alex Mosunov on 2/4/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var score = 0
    var questionNumber = 0
    var englishLevel = ""
    
    let quiz = [
        Question(q: "Hello! Can I park here?", a: ["Sorry, I did that.", "It's the same place.", "Only for half an hour.", "He lives here"], correctAnswer: "Only for half an hour."),
        Question(q: "What colour will you paint the children's bedroom?", a: ["I hope it was right.", "We can't decide.", "It wasn't very difficult.", "I don't think so"], correctAnswer: "We can't decide."),
        Question(q: "I can't understand this email.", a: ["Would you like some help?", "Don't you know?", "I suppose you can.", "No, I'm sorry"], correctAnswer: "Would you like some help?"),
        Question(q: "Shall we go to the gym now?", a: ["Thank you", "Not at all.", "It's very good.", "I'm too tired."], correctAnswer: "I'm too tired."),
        Question(q: "I ______ bus on Mondays. I like public transportation.", a: ["'m going to work with", "'m going to work by", "go to work with", "go to work by"], correctAnswer: "go to work by"),
        Question(q: "Sorry, but this chair is ______.", a: ["me", "mine", "my", "our"], correctAnswer: "mine"),
        Question(q: "'Where ______ ? I can pick her up.'", a: ["your sister works", "your sister work", "does your sister work", "do your sister work"], correctAnswer: "does your sister work"),
        Question(q: "The test is ______ February. We need to prepare!", a: ["in", "at", "on", "over"], correctAnswer: "on"),
        Question(q: "I don't have ______ free time. The lesson is starting soon.", a: ["many", "much", "a lot", "some"], correctAnswer: "much"),
        Question(q: "Don't put your cup on the ______ of the table – someone will knock it off.", a: ["outside", "edge", "boundary", "border"], correctAnswer: "edge"),
        Question(q: "I'm sorry - I didn't ______ to disturb you.", a: ["hope", "think", "mean", "suppose"], correctAnswer: "mean"),
        Question(q: "The singer ended the concert ______ her most popular song.", a: ["by", "with", "in", "for"], correctAnswer: "with"),
        Question(q: "My husband ______ live in Spain.", a: ["use to", "was use to", "used to", "was used to"], correctAnswer: "used to"),
        Question(q: "I was very ______ in the story.", a: ["interest", "interesting", "interested", "interests"], correctAnswer: "interested"),
        Question(q: "Dubai has _________ building in the world.", a: ["the most tall", "the tallest", "bigger", "tall"], correctAnswer: "ithe tallest")
    ]
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getQuestion() -> String {
        return quiz[questionNumber].question
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func getLevel() -> String {
        let percentage =  Float(score) / Float(quiz.count)
        if percentage < 0.2 {
            englishLevel = "Your level is: Beginner"
        } else if percentage < 0.4 {
            englishLevel = "Your level is: Pre-intermediate"
        } else if percentage < 0.6 {
            englishLevel = "Your level is: Intermediate"
        } else if percentage < 0.8 {
            englishLevel = "Your level is: Upper-intermediate"
        } else {
            englishLevel = "Your level is: Advanced"
        }
        return englishLevel
    }
    
    mutating func checkAnswer(_ userAnswer: String) {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
        }
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func updateStats() {
        score = 0
        questionNumber = 0
    }
    
}
