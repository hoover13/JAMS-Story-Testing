//
//  Chapter1View7.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/15/23.
//

import SwiftUI

struct Chapter1View7: View {
    enum VowAnswer2: String, CaseIterable {
        case yes = "Y"
        case no = "N"
        
        func vowValue2() -> String {
            switch(self) {
            case .yes:
                return "I Do."
            case .no:
                return "...Nah."
            }
        }
        
        
    }
    @State private var acceptVows2: VowAnswer2 = .yes
    @ViewBuilder
    func branchingPaths3() ->  some View {
        switch(acceptVows2) {
        case .yes: Chapter1View8()
        case .no: Chapter1AltView3()
        }
    }
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(.C_1_P_4)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Image(.inFrontOfHer)
                        .resizable()
                        .frame(width: 302, height: 343)
            ScrollView {
                Section {
                    Text("Cinderella feels her heart skip several beats upon hearing this. The minister turns towards her, and asks her the same thing. Cinderella, cheeks flush and rosy, says:")
                        .font(.custom("Chalkduster", size: 32))
                        .padding()
                    
                    Picker("Answer:", selection: $acceptVows2) {
                        ForEach(VowAnswer2.allCases, id: \.self) { selection in
                            let response = selection.vowValue2()
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
                        NavigationLink(destination: Chapter1View3(), label: {
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

                        NavigationLink(destination: branchingPaths3(), label: {
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
            .background(Color(.C_1_P_4))
        }
        
    }
    
    
}
}
}

#Preview {
    Chapter1View7()
}
