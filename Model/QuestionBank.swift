//
//  QuestionBank.swift
//  Final_Exam_IOS
//
//  Created by Svetlana on 2020-07-30.
//  Copyright © 2020 Svetlana. All rights reserved.
//

import Foundation

class QuestionRepository {     //
    
    var questionsList = [Question]()
    
    init(){
        questionsList.append(Question(questionText: " 22 + 2", choice1: "24", choice2: "5", choice3: "6", answer: 1))
        questionsList.append(Question(questionText: " 10 * 2 ", choice1: "80", choice2: "20", choice3: "40", answer: 2))
        questionsList.append(Question(questionText: " 18 + 1 ", choice1: "5", choice2: "19", choice3: "6", answer: 2))
        questionsList.append(Question(questionText: " 55 + 5 ", choice1: "55", choice2: "60", choice3: "12", answer: 2))
        questionsList.append(Question(questionText: " 21 - 20 ", choice1: "11", choice2: "12", choice3: "1", answer: 3))
        questionsList.append(Question(questionText: " 15 / 5 ", choice1: "33", choice2: "3", choice3: "30", answer: 2))
        questionsList.append(Question(questionText: " 10 - 10 ", choice1: "80", choice2: "90", choice3: "0", answer: 3))
        questionsList.append(Question(questionText: " 33 + 3 ", choice1: "36", choice2: "66", choice3: "63", answer: 1))
        questionsList.append(Question(questionText: " 10 * 20 ", choice1: "200", choice2: "100", choice3: "300", answer: 1))
        questionsList.append(Question(questionText: " 60 - 20 ", choice1: "400", choice2: "50", choice3: "40", answer: 3))
    
    }
}
