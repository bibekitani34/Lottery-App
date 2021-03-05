//
//  ContentView.swift
//  Lottery App
//
//  Created by Bibek Itani on 3/4/21.
//  Copyright © 2021 Bibek ltd. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    

     @State var rand1 = 1
     @State var rand2 = 1
     @State var rand3 = 1
     @State var score = 1000
    
    var body: some View {
       
            VStack{
                Spacer()
                Text("Lottery Game").font(.largeTitle)
                Spacer()
                    .font(.system(size: 40))
                    
               
                HStack{
                    Text("Credits:  ")
                    
                    .bold()
                    
                    Text(String(score))
                }
               
                HStack{
                  
                    Image("fruit\(rand1)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image("fruit\(rand2)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("fruit\(rand3)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                  
                }
                Spacer()
                Button(action: {
                    
                    self.rand1 = Int.random(in: 1...3)
                    self.rand2 = Int.random(in: 1...3)
                    self.rand3 = Int.random(in: 1...3)
                    
                    if self.rand1 == self.rand2 && self.rand2 == self.rand3{
                        self.score += 50
                    }else{
                        self.score -= 20
                    }
                }) {
                    Text("Spin").padding().padding([.leading, .trailing], 40).background(Color.pink).cornerRadius(25).foregroundColor(Color.white)
                
                }
            Spacer()
                Button(action:{
                    self.score = 1000
                }, label: {
                    Text("Reset game")
                        .padding().padding([.leading, .trailing], 40).background(Color.green).cornerRadius(25).foregroundColor(Color.white)
                })
                Spacer()
                
                
                
                
                }
            
        }
                       
               
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
