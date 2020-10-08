//
//  ViewController.swift
//  Final_Exam_IOS
//
//  Created by Svetlana on 2020-07-30.
//  Copyright © 2020 Svetlana. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    
    let allQuestions = QuestionRepository() //an object for all questions
    
    var questionNumber: Int = 0
    var score: Int = 0
    var selectAnswer: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateQuestion() // function for changing questions and title buttons for answer
        updateUI()
        
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if sender.tag == selectAnswer {
            sender.backgroundColor = UIColor.green
            print("correct answer!")
            score += 1
    
        }else {
            print("wrong answer!")
            sender.backgroundColor = UIColor.red
        }
        
        questionNumber += 1
        updateQuestion() // function for changing questions and title buttons for answer
        
        
    }
    
    func updateQuestion(){ // function for changing questions and title buttons for answer
       
       
        if questionNumber < allQuestions.questionsList.count {   //checking the number of questions in the QuestionBank
            
            questionLabel.text = allQuestions.questionsList[questionNumber].question  // initialization a new questions
            
            choice1.setTitle(allQuestions.questionsList[questionNumber].answer1, for: UIControl.State.normal) //changing title for button
            choice2.setTitle(allQuestions.questionsList[questionNumber].answer2, for: UIControl.State.normal) //changing title for button
            choice3.setTitle(allQuestions.questionsList[questionNumber].answer3, for: UIControl.State.normal) //changing title for button
            
            selectAnswer = allQuestions.questionsList[questionNumber].correctAnswer // initialization corect answer
        
        }else {
            
            //if all questions are over show allert and after restart Aplications
            
            let alert = UIAlertController(title: "Thank you!", message: "You score is: \(score)", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Try again", style: .default, handler:{action in self.restartAplication()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
        //timer for function update questions (color visibility)
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    //function for restarting my aplications
    func restartAplication(){
        
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }
    
            
    @objc func updateUI(){
        
        scoreLable.text = "Score: \(score)"
        progressView.progress = Float(questionNumber+1) / Float(allQuestions.questionsList.count)
        choice1.backgroundColor = UIColor.yellow
        choice2.backgroundColor = UIColor.yellow
        choice3.backgroundColor = UIColor.yellow
    }
    
    
}

