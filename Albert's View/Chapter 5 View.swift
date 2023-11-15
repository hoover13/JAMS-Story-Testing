//
//  Chapter 5 View.swift
//  Jams story testing
//
//  Created by Albert Florido  on 11/14/23.
//

import SwiftUI

enum SheetTypes: Identifiable {
    case first, second, third, fourth, fifth
    
    var id: Int {
        hashValue
    }
}


    
    struct Chapter5View: View {
        @State private var activeSheet: SheetTypes?
        
        
        var body: some View {
            ZStack {
                LinearGradient(colors: [.blue, .green], startPoint: .topTrailing, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    Text("Chapter 5:")
                        .bold()
                    Text("Not So Happily Ever After?")
                       
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                    
                    Image("castle")
                        .resizable()
                        .scaledToFit()
                    HStack {
                        Button(action: {
                            self.activeSheet = .first
                        }, label: {
                            Text("Part 1")
                                .frame(width: 80, height: 45)
                                .padding([.trailing, .leading])
                                
                                .background(.blue)
                                .foregroundColor(.white)
                                .bold()
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                               
                               
                                
                               
                            
                            Button(action: {
                                self.activeSheet = .second
                            }, label: {
                                Text("Part 2")
                                    .frame(width: 80, height: 45)
                                    .padding([.trailing, .leading])
                                    .background(.blue)
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(10)
                                
                                Button(action: {
                                    self.activeSheet = .third
                                }, label: {
                                    Text("Part 3")
                                        .frame(width: 80, height: 45)
                                        .padding([.trailing, .leading])
                                        .background(.blue)
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(10)
                                    
                                })
                                    
                                   
                            })
                            
                            
                          
                        })
                    }
                    HStack {
                        Button(action: {
                            self.activeSheet = .fourth
                        }, label: {
                            Text("Part 4")
                                .frame(width: 80, height: 45)
                                .padding([.trailing, .leading])
                                .background(.blue)
                                .foregroundColor(.white)
                                .bold()
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                            
                            Button(action: {
                                self.activeSheet = .fifth
                            }, label: {
                                Text("Part 5")
                                    .frame(width: 80, height: 45)
                                    .padding([.trailing, .leading])
                                    .background(.blue)
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(10)
                            })
                            
                            
                            
                            
                            
                        })
                    }
                           

                                
                        }
                .sheet(item: self.$activeSheet, onDismiss: {print("Sheet closed")}) { item in
                    switch item {
                    case .first:
                        SheetViewOne()
                    case .second:
                        SheetViewTwo()
                    case .third:
                        SheetViewThree()
                    case .fourth:
                        SheetViewFour()
                    case .fifth:
                        SheetViewFive()
                        
                        
                    }
                    
                }
                        
                         
                
                                
                            }
                        }
           
            
               
                    
                    
                 
                            
                        
                    }
                
                        
              
                
            
                
            
            
        
        
    
    
    #Preview {
        Chapter5View()
    }






