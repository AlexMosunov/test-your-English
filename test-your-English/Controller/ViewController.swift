//
//  ViewController.swift
//  test-your-English
//
//  Created by Alex Mosunov on 2/4/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quizBrain = QuizBrain()

    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1Label: UIButton!
    @IBOutlet weak var button2Label: UIButton!
    @IBOutlet weak var button3Label: UIButton!
    @IBOutlet weak var button4Label: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        
        quizBrain.checkAnswer(userAnswer!)
        
        if quizBrain.questionNumber == quizBrain.quiz.count - 1 {
            self.performSegue(withIdentifier: "goToScore", sender: self)
            quizBrain.updateStats()
        } else {
            quizBrain.nextQuestion()
        }
        
        updateUI()
        
        
    }
    
    func updateUI() {
        questionLabel.text = quizBrain.getQuestion()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        progressView.progress = quizBrain.getProgress()
        
        let answerChoices = quizBrain.getAnswers()
        
        button1Label.setTitle(answerChoices[0],for: .normal)
        button2Label.setTitle(answerChoices[1],for: .normal)
        button3Label.setTitle(answerChoices[2],for: .normal)
        button4Label.setTitle(answerChoices[3],for: .normal)

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToScore" {
            let destinationVC = segue.destination as! ScoreViewController
            destinationVC.score = quizBrain.getScore()
            destinationVC.numOfQuestions = quizBrain.quiz.count
            destinationVC.level = quizBrain.getLevel()
        }
    }
    
}

