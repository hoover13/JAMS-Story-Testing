//
//  Chapter1View3.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/13/23.
//

import SwiftUI

struct Chapter1View3: View {
    enum ProposalAnswer: String, CaseIterable {
        case yes
        case no
        
        func proposalValue() -> String {
            switch(self) {
            case .yes:
                return "Yes"
            case .no:
                return "No"
            }
        }
        
        
    }
    @State private var acceptProposal: ProposalAnswer = .yes
    @ViewBuilder
    func branchingPaths() ->  some View {
        switch(acceptProposal) {
        case .yes: Chapter1View4()
        case .no: Chapter1AltView()
        }
    }
   
    
    
    
    
    var body: some View {
        ZStack {
            Color(.C_1_P_3)
                .ignoresSafeArea(.all)
            VStack {
                Image("Decision1")
                    .resizable()
                    .frame(width: 329, height: 339)
                Text("Does Cinderella Accept His Proposal?")
                    .font(.custom("Chalkduster", size: 32))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
            
                
                Picker("Answer:", selection: $acceptProposal) {
                    ForEach(ProposalAnswer.allCases, id: \.self) { selection in
                        let response = selection.proposalValue()
                        Text("\(response)")
                        
                    }
                }
                .frame(width: 100)
                .pickerStyle(SegmentedPickerStyle())
                .scaledToFit()
                .scaleEffect(CGSize(width: 2.0, height: 2.0))
                .padding()
                
                Spacer()
                
                HStack {
                    Spacer()
                    NavigationLink(destination: Chapter1View2(), label: {
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

                    NavigationLink(destination: branchingPaths(), label: {
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
        }
}

#Preview {
    Chapter1View3()
}
