//
//  Chapter1View4.swift
//  SwiftUIStoryTemplate
//
//  Created by Dashawn Morrow on 11/14/23.
//

import SwiftUI

struct Chapter1View4: View {
    var body: some View {
        
                NavigationStack {
                    ZStack {
                        Color(.C_1_P_4)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        VStack {
                            Image(.sheAccepts)
                                .resizable()
                                .frame(width: 302, height: 343)
                    ScrollView {
                        Section {
                            Text("The young woman graciously accepts his request, as she is quite infatuated with the price and marriage would be considered a dream come true for her.  ")
                                .font(.custom("Chalkduster", size: 32))
                                .padding(25)
                                
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
                                
                                NavigationLink(destination: SplashScreenView(), label: {
                                    Text("Chapter Select")
                                        .frame(width: 100, height: 50)
                                        .background(Color.red)
                                        .foregroundColor(.white)
                                        .cornerRadius(25.0)
                                        .navigationBarBackButtonHidden(true)
                                })
                                .padding()
                                Spacer()

                                NavigationLink(destination: Chapter1View5(), label: {
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
    Chapter1View4()
}
