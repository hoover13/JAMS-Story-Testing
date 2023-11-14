//
//  Chapter2GameView.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/13/23.
//

import SwiftUI

struct Chapter2GameView: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswer: String? = nil
    @State private var score = 0
    
    let questions: [Question] = [
        Question(questionText: "Who is the youngest person in the team?", answerOne: "Dashawn", answerTwo: "Joe", answerThree: "Jamar", answerFour: "Albert", correctAnswer: "Albert"),
        Question(questionText: "How many children does Jamar have?", answerOne: "1", answerTwo: "2", answerThree: "3", answerFour: "None", correctAnswer: "2"),
        Question(questionText: "Who is the most confident one?", answerOne: "Dashawn", answerTwo: "Joe", answerThree: "Jamar", answerFour: "Albert", correctAnswer: "Joe"),
        Question(questionText: "Who is the most confident one?", answerOne: "Dashawn", answerTwo: "Joe", answerThree: "Jamar", answerFour: "Albert", correctAnswer: "Joe"),
        Question(questionText: "Who is the most confident one?", answerOne: "Dashawn", answerTwo: "Joe", answerThree: "Jamar", answerFour: "Albert", correctAnswer: "Joe")
    ]
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    var allAnswers: [String] {
        [currentQuestion.answerOne, currentQuestion.answerTwo, currentQuestion.answerThree, currentQuestion.answerFour].compactMap { $0 }
    }
    
    var body: some View {
        VStack {
            Text(currentQuestion.questionText)
                .padding()
            
            ForEach(allAnswers, id: \.self) { answer in
                Button(action: {
                    answerButtonTapped(answer)
                }) {
                    Text(answer)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(selectedAnswer == answer ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(selectedAnswer != nil)
            }
        }
        .padding()
    }
    
    func answerButtonTapped(_ answer: String) {
        selectedAnswer = answer
        
        if answer == currentQuestion.correctAnswer {
            score += 1
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            nextQuestion()
        }
    }
    
    func nextQuestion() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            selectedAnswer = nil
        } else {
            print("Quiz completed. Score: \(score)")
            // Handle quiz completion, e.g., show the user's score or navigate to the next screen
        }
    }
}



#Preview {
    Chapter2GameView()
}
