//
//  Question.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/13/23.
//

import Foundation

struct Question: Identifiable, Hashable {
    
    let id = UUID()
    let questionText : String
    let answerOne : String
    let answerTwo : String
    let answerThree : String
    let answerFour : String
    let correctAnswer : String
    
}
