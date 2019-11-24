//
//  PlayContentView.swift
//  FRUITS CHOICE
//
//  Created by Md Khaled Hasan Manna on 24/11/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI

struct PlayContentView: View {
    
    
    
    let fruits = ["Apricot","Avocado","Banana","Blackberry","Blackcurrent",
         "Bluberries","Breadfruit","Cantaloupe","Carambola","Cherries","Cranberries","DragonFruit","Feijoa","Fig","Gooseberries","Grapefruit","Grapes","Guava","Honeydewmelon","Jackfruit","Javplum","Jujube","Kiwi","Kumquat","Lemon","Longan","Loquat","Lychee","Mandarin","Mango","Mangosteen","Mulberries","Nactarine","Olives","Orange","","Papaya","Passionfruit","Peach","Pear","Pineapple","Plums","Pomegranate","Roseapple","Soursop","Strawberries","Sugarapple","Tamarind","Tangerine","Watermelon"
    ]
    
    
    
    
    var body: some View {
    
        
        VStack{
            
             //print(fruits.count)
            Text("\(fruits.count)")
        }
       
        
    }
}

struct PlayContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayContentView()
    }
}
