//
//  BitcoinView.swift
//  AwordsCollectionApp
//
//  Created by User on 26.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct BitcoinView: View {
    
    @State var onTop = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200, height: 200)
            LetterB()
                .stroke(lineWidth: 12)
                .foregroundColor(.white)
                .frame(width: 100, height: 100)
            LetterB()
                .stroke(lineWidth: 12)
                .foregroundColor(.white)
                .frame(width: 100, height: 100)
                .offset(x: 40)
            VStack {
                Spacer()
                Button(action: onButtonTap ) {
                    Text("Animation")
                    .font(.headline)
                }
                
            }
        }
        .offset(y: self.onTop ? -450 : 0)
        .animation(.spring(response: 0.5, dampingFraction: 0.1, blendDuration: 0.5))
    }
    
    func onButtonTap () {
        self.onTop.toggle()
        
    }
    
    struct LetterB: Shape {
        
        func path(in rect: CGRect) -> Path {
            Path { path in
                path.move(to: CGPoint(x: rect.size.width/2, y: 0))
                path.addLine(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 0, y: rect.size.width/2))
                path.addLine(to: CGPoint(x: rect.size.width/2, y: rect.size.width/2))
                path.move(to: CGPoint(x: 0, y: rect.size.width/2))
                path.addLine(to: CGPoint(x: 0, y: rect.size.width))
                path.addLine(to: CGPoint(x: rect.size.width/2, y: rect.size.width))
                path.addArc(center: CGPoint(x: rect.size.width/2, y: rect.size.width*(3/4)), radius: rect.size.width/4, startAngle: .degrees(90), endAngle: .degrees(270), clockwise: true)
                path.addArc(center: CGPoint(x: rect.size.width/2, y: rect.size.width/4), radius: rect.size.width/4, startAngle: .degrees(90), endAngle: .degrees(270), clockwise: true)
            }
        }
    }

    
    struct BitcoinView_Previews: PreviewProvider {
        static var previews: some View {
            BitcoinView()
        }
    }
}
