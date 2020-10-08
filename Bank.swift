//
//  Bank.swift
//  Final_Exam_IOS
//
//  Created by Svetlana on 2020-07-28.
//  Copyright © 2020 Svetlana. All rights reserved.
//

import Foundation

class Bank{
    
    var list = [Questions]()
    
    init(){
        list.append(Question(questionText: "2+2", choice1: "4", choice2: "5", choice3: "6", answer: 4))
        list.append(Question(questionText: "10*2", choice1: "80", choice2: "20", choice3: "20", answer: 20))
        list.append(Question(questionText: "2+0", choice1: "4", choice2: "5", choice3: "2", answer: 4))
        list.append(Question(questionText: "2+6", choice1: "8", choice2: "5", choice3: "2", answer: 8))
        list.append(Question(questionText: "3+5", choice1: "4", choice2: "8", choice3: "2", answer: 8))
    
    }
}
