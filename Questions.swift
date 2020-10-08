//
//  Questions.swift
//  Final_Exam_IOS
//
//  Created by Svetlana on 2020-07-28.
//  Copyright © 2020 Svetlana. All rights reserved.
//

import Foundation

class Questions {
    
    let question: String
    let option1:String
    let option2:String
    let option3:String
    let correctAnswer: Int
    
    init(questionText: String, choice1: String, choice2: String, choice3: String, answer:Int ){
        question = questionText
        option1 = choice1
        option2 = choice2
        option3 = choice3
        correctAnswer = answer
    }
    
}
