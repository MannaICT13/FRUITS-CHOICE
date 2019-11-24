//
//  PlayContentView.swift
//  FRUITS CHOICE
//
//  Created by Md Khaled Hasan Manna on 24/11/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI

struct PlayContentView: View {
    
    
    
    @State private var fruitsList = ["Apricot","Avocado","Banana","Blackberry","Blackcurrant",
         "Blueberries","Breadfruit","Cantaloupe","Carambola","Cherries","Cranberries",
    "DragonFruit","Feijoa","Fig","Gooseberries","Grapefruit","Grapes","Guava",
    "Honeydewmelon","Jackfruit","Javplum","Jujube","Kiwi","Kumquat","Lemon","Longan",
    "Loquat","Lychee","Mandarin","Mango","Mangosteen","Mulberries","Olives","Orange",
"Papaya","Passionfruit","Peach","Pear","Pineapple","Plums","Pomegranate","Roseapple",
"Soursop","Strawberries","Sugarapple","Tamarind","Tangerine","Watermelon"
    
        ].shuffled()
    

    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var isShowingTab = true
    @State private var isShowingFruitsName = true
    @State private var isShowingFruitsImage = true
    @State private var isShowingGameOver = false
    @State private var isShowingPlayAgain = false
    @State private var isShowingTotalScore = false
    @State private var alertTitle = ""
    @State private var alertMessage = " Your score is :"
    @State private var isAlertShow = false
    @State private var scoreCount = 0
    @State private var askQuestionCount = 0
    
    
    
    
    
    
    
    var body: some View {
        
    
            ZStack{
                
            
                VStack(spacing:10){
                    
            
            VStack(spacing: 5){
                
                if isShowingTab{
                    Text("Tab The Fruits")
                        .font(.headline)
                }else{
                    
                     Text("Tab The Fruits")
                        .font(.headline)
                    .hidden()
                    
                }
                
                if isShowingTotalScore{
                    Text("Total Score:\(scoreCount)")
                        .font(.headline)
                }else{
                     Text("Total Score:\(scoreCount)")
                    .font(.headline)
                    .hidden()
                }
                
                if isShowingFruitsName{
                    Text("\(fruitsList[correctAnswer])")
                    .font(.largeTitle)
                }else{
                    Text("\(fruitsList[correctAnswer])")
                    .font(.largeTitle)
                    .hidden()
                }
                
                
                if isShowingGameOver{
                    Text("GAME OVR")
                         .font(.largeTitle)
                }else{
                    Text("GAME OVR")
                         .font(.largeTitle)
                    .hidden()
                }
                
               
                if isShowingPlayAgain{
                    
                    NavigationLink(destination: PlayContentView(), label: {
                                     
                                     Text("PLAY AGAIN")
                                     .navigationBarBackButtonHidden(true)
                                 })
                                 
                }else{
                    NavigationLink(destination: PlayContentView(), label: {
                                     
                                     Text("PLAY AGAIN")
                                     .navigationBarBackButtonHidden(true)
                        }).hidden()
                                 
                }
                
             
               
              
                
            }
                
            
       

                
                
                
            VStack(spacing : 5){
                    
                if self.isShowingFruitsImage {
                    
                    ForEach(0..<3){ number in
                                          
                                          Button(action: {
                                              self.fruitsTab(number)
                                              
                                          }, label: {
                                              
                                              Image(self.fruitsList[number])
                                                  .renderingMode(.original)
                                              .resizable()
                                              .frame(width: 120, height: 120)
                                          })
                                          
                                      }
                }else{
                    
                    ForEach(0..<3){ number in
                                          
                                          Button(action: {
                                              self.fruitsTab(number)
                                              
                                          }, label: {
                                              
                                              Image(self.fruitsList[number])
                                                  .renderingMode(.original)
                                              .resizable()
                                              .frame(width: 120, height: 120)
                                          })
                                          
                    }.hidden()
                }
                  
                    
                    
                    
                    }
                
                Spacer()
                
                    
            
            
            
        }
        
    }.alert(isPresented: $isAlertShow, content: {
      
        Alert(title: Text(alertTitle), message: Text("\(alertMessage)\(scoreCount)"), dismissButton: .default(Text("Continue"), action: {
            
            self.askQuestion()
            
        }))
    })
        
        
        
        
    }
    
    func fruitsTab(_ number: Int){
        
        if number == correctAnswer{
            
            alertTitle = "Right"
            scoreCount = scoreCount + 5
            
        }else{
            alertTitle = "Wrong"
        }
        
        isAlertShow = true
        
    }
    
    
    
    func askQuestion() {
        
        askQuestionCount = askQuestionCount + 1
        
        if askQuestionCount == 5 {
            
            isShowingFruitsName = false
            isShowingTab = false
            isShowingFruitsImage = false
            isShowingGameOver = true
            isShowingPlayAgain = true
            isShowingTotalScore =  true
            
        }else{

            self.fruitsList.shuffle()
            correctAnswer = Int.random(in: 0...2)
        }
        
        
        
    }
    
    
    
    
}

struct PlayContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayContentView()
    }
}
