//
//  HomeContentView.swift
//  FRUITS CHOICE
//
//  Created by Md Khaled Hasan Manna on 24/11/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI

struct HomeContentView: View {
    
    
    var body: some View {
        
        
        ZStack{
        
            VStack{
                Image("lunchScreen")
                .renderingMode(.original)
                
                Spacer()
            }
    
        VStack(spacing : 10){
            
            Button(action: {
                
            }, label: {
                
                Text("Play").font(.largeTitle).foregroundColor(Color.white)
            })
                .frame(width: 220, height: 60)
                .background(Color.purple)
                .cornerRadius(20)
        
        
        Button(action: {
                      
                  }, label: {
                      
                    Text("Help").font(.largeTitle).foregroundColor(Color.white)
                  })
                      .frame(width: 220, height: 60)
            .background(Color.purple)
                      .cornerRadius(20)
              
        
    
    Button(action: {
                  
              }, label: {
                  
                Text("About").font(.largeTitle).foregroundColor(Color.white)
              })
                  .frame(width: 220, height: 60)
        .background(Color.purple)
                  .cornerRadius(20)
          }
        
        }
        
        
        
        
        }
        
        
}

struct HomeContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView()
    }
}
