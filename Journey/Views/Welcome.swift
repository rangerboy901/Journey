//
//  Welcome.swift
//  Journey
//
//  Created by Joseph  DeWeese on 2/13/23.
//

import SwiftUI

struct Welcome: View {
    
    let welcomeMessages: [WelcomeMessage]  = [
        WelcomeMessage(title: "Day after day..." ),
        WelcomeMessage(title: "One foot in front of the other..."),
        WelcomeMessage(title: "This is how we grind....")
    ]
    
    
    
    var body: some View {
        ZStack {
            WelcomeShape()
            TabView {
                ForEach(welcomeMessages, id: \.self)  {  welcomeMessage in
                   
                        VStack(alignment: .leading, spacing: 20) {
                          Spacer()
                            Text(welcomeMessage.title)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal,50)
                                .font(.system(size: 50))
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                            
                            if welcomeMessages.last == welcomeMessage {
                                 Button(action: {
                                     
                                 }, label: {
                                     Text("Join Us")
                                         .frame(minWidth: 0, maxWidth: UIScreen.screenWidth / 2)
                                         .font(.system(size: 35))
                                         .padding(.horizontal, 50)
                                         .padding()
                                         .foregroundColor(.white)
                                         .overlay(RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color.white, lineWidth: 4))
                                 })
                                    .padding(.vertical, 20)
                            }
                           
                            Spacer(minLength: 80)
                        }
                        .onAppear{
                            print("selected item : \(welcomeMessage.title)")
                        }
                    }
                }
            //Tabview
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: .center)
                                         .tabViewStyle(PageTabViewStyle())
            }
          
                               .ignoresSafeArea(.all)
        }//ZStack
       
    }

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
