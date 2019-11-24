//
//  PlayContentView.swift
//  FRUITS CHOICE
//
//  Created by Md Khaled Hasan Manna on 24/11/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI

struct PlayContentView: View {
    
    
    
    @State private var fruitsList = ["Apricot","Avocado","Banana","Blackberry","Blackcurrent",
         "Bluberries","Breadfruit","Cantaloupe","Carambola","Cherries","Cranberries","DragonFruit","Feijoa","Fig","Gooseberries","Grapefruit","Grapes","Guava","Honeydewmelon","Jackfruit","Javplum","Jujube","Kiwi","Kumquat","Lemon","Longan","Loquat","Lychee","Mandarin","Mango","Mangosteen","Mulberries","Nactarine","Olives","Orange","","Papaya","Passionfruit","Peach","Pear","Pineapple","Plums","Pomegranate","Roseapple","Soursop","Strawberries","Sugarapple","Tamarind","Tangerine","Watermelon"
    ]
    

    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var isShowingTab = true
    @State private var isShowingFruitsName = true
    @State private var isShowingGameOver = false
    @State private var isShowingPlayAgain = false
    
    
    
    
    
    
    
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
                    
                
                    ForEach(0..<3){ number in
                        
                        Button(action: {
                            
                        }, label: {
                            
                            Image(self.fruitsList[number])
                                .renderingMode(.original)
                            .resizable()
                            .frame(width: 120, height: 120)
                        })
                        
                    }
                    
                    
                    
                }
                
                Spacer()
                
                    
            
            
            
        }
        
    }
        
    }
    
}

struct PlayContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayContentView()
    }
}
