//
//  Question.swift
//  Final_Exam_IOS
//
//  Created by Svetlana on 2020-07-30.
//  Copyright © 2020 Svetlana. All rights reserved.
//

import Foundation

class Question {
    
    let question: String
    let answer1: String
    let answer2: String
    let answer3: String
    let correctAnswer: Int
    
    init(questionText: String, choice1: String, choice2: String, choice3: String, answer:Int ){
        question = questionText
        answer1 = choice1
        answer2 = choice2
        answer3 = choice3
        correctAnswer = answer
    }
    
}
