//
//  WelcomeShape.swift
//  Journey
//
//  Created by Joseph  DeWeese on 2/13/23.
//

import SwiftUI

struct WelcomeShape: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                path.addRect(CGRect(x: 0, y: 0, width:  UIScreen.screenWidth, height: UIScreen.screenHeight))
                
            }
            .fill(.linearGradient(Gradient(colors: [Color(12, 128, 195), Color(uiColor: .systemOrange)]),
                                  startPoint: .bottomLeading,
                                  endPoint: .topTrailing))
            Path { path in
                path.move(to: CGPoint(x: 0 , y: 0))
                path.addLine(to: CGPoint(x: UIScreen.screenWidth, y: 0))
                path.addLine(to: CGPoint(x: UIScreen.screenWidth, y: 175))
                path.addQuadCurve(to: CGPoint(x: 0, y: 300), control: CGPoint(x: UIScreen.screenWidth/3, y: 100))
                
            }
            .fill(Color(uiColor: .systemOrange))
            .shadow(color: .black.opacity(0.5), radius: 25, x: 15, y: 15)
            
            
            
            Path { path in
                path.move(to: CGPoint(x: 0 , y: UIScreen.screenHeight))
                path.addLine(to: CGPoint(x: UIScreen.screenWidth, y: UIScreen.screenHeight))
                path.addLine(to: CGPoint(x: UIScreen.screenWidth, y: UIScreen.screenHeight - 300))
                path.addQuadCurve(to: CGPoint(x: 0, y:UIScreen.screenHeight - 30), control: CGPoint(x: 2 *  UIScreen.screenWidth/3, y: UIScreen.screenHeight - 100))
                
            }
            .fill(Color(15, 128, 195))
            .shadow(color: .black.opacity(0.5), radius: 25, x: 15, y: 10)
           
                  
            }
        .ignoresSafeArea()
        }
      
    }


struct WelcomeShape_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeShape()
    }
}
