//
//  MyView.swift
//  AwordsCollectionApp
//
//  Created by User on 25.09.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(style: StrokeStyle(lineWidth: 7,
                                       lineCap: .square,
                                       dash: [15],
                                       dashPhase: 2))
            .frame(width: 250, height: 100)
            .foregroundColor(.purple)
            .padding()
        
    }
}


struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
