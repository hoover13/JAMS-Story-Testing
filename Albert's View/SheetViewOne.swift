//
//  SheetViewOne.swift
//  Jams story testing
//
//  Created by Albert Florido  on 11/15/23.
//

import SwiftUI


    
 

struct SheetViewOne: View {
    @State var countDownTimer = 10
    @State var timerRunning = true
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .green], startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea()
            VStack {
                Text(" The following morning, Cinderella wakes up worried. Her birthday just passed, she just turned 27, and this is a terrible start to her new year of life. She brushes her golden hair and gets ready in her royal gown. As soon as she's done and ready to start the day, a royal servant enters her room and announces she is banished from the castle! She has been informed that she is stripped of all her wealth and status. \"I'm broke! What ever will I do now? I need to go to the bank this instant!\" As Cinderella talks to the teller, they show her bank balance. She is stunned as she watches her bank account drop in front of her eyes.")
                    .padding()
                VStack {
                    Text("\(countDownTimer)")
                        .onReceive(timer) { _ in
                            if countDownTimer > 0 && timerRunning {
                                countDownTimer -= 1
                            } else {
                                timerRunning = false
                            }
                        }
                        .font(.system(size: 35, weight: .bold))
                        
                    
                    Text("Narrators note: 10 dollars was a lot of money back then. She was basically a millionaire.")
                        .padding(1)
                }
              
                
                Spacer()
                Image("PrincessRoom")
                    .resizable()
                    .scaledToFit()
                    .padding()
               
                
            }
        }
    }
}

#Preview {
    SheetViewOne()
}
