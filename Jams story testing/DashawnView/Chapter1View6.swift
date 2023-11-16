//
//  Chapter1View6.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/15/23.
//

import SwiftUI

struct Chapter1View6: View {
    enum VowAnswer: String, CaseIterable {
        case yes = "Y"
        case no = "N"
        
        func vowValue() -> String {
            switch(self) {
            case .yes:
                return "I Do."
            case .no:
                return "...Nah."
            }
        }
        
        
    }
    @State private var acceptVows: VowAnswer = .yes
    @ViewBuilder
    func branchingPaths2() ->  some View {
        switch(acceptVows) {
        case .yes: Chapter1View7()
        case .no: Chapter1AltView2()
        }
    }
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("C1P2")
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image(.inFrontofHim)
                        .resizable()
                        .frame(width: 302, height: 343)
            ScrollView {
                Section {
                    Text("The minister asks the prince if he’ll take her in sickness and health, in prosperity and hardship, till death do they part, and the prince confidently says:")
                        .font(.custom("Chalkduster", size: 32))
                        .padding(25)
                        .foregroundColor(.white)
                    
                    Picker("Answer:", selection: $acceptVows) {
                        ForEach(VowAnswer.allCases, id: \.self) { selection in
                            let response = selection.vowValue()
                            Text("\(response)")
                            
                        }
                    }
                    .frame(width: 100)
                    .pickerStyle(SegmentedPickerStyle())
                    .scaledToFit()
                    .scaleEffect(CGSize(width: 2, height: 2))
                    .padding()
                        
                }
                
                Spacer()
                Section {
                    HStack {
                        Spacer()
                        NavigationLink(destination: Chapter1View5(), label: {
                            Text("Back")
                                .frame(width: 100, height: 50)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(25.0)
                                .navigationBarBackButtonHidden(true)
                        })
                        .padding()
                        Spacer()
                        
                        NavigationLink(destination: TestingView(), label: {
                            Text("Chapter Select")
                                .frame(width: 100, height: 50)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(25.0)
                                .navigationBarBackButtonHidden(true)
                        })
                        .padding()
                        Spacer()

                        NavigationLink(destination: branchingPaths2(), label: {
                            Text("Next")
                                .frame(width: 100, height: 50)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(25.0)
                                .navigationBarBackButtonHidden(true)
                        })
                        .padding(.horizontal)
                        Spacer()
                    }
           
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color("C1P2"))
        }
        
    }
    
    
}
    }
}

#Preview {
    Chapter1View6()
}
