//
//  PageThree.swift
//  SwiftUI ProgressView
//
//  Created by RMP on 14/06/1448 AH.
//

import SwiftUI

struct PageThree: View {
    
    @State var progress = 0.50
    
    var body: some View {
        VStack(spacing: 35) {
            
            ProgressView(value: 0.2)
            
            ProgressView(value: 50, total: 100)
            
            ProgressView("Downloading", value: 70, total: 100)
            
            ProgressView(value: progress) {
                HStack(spacing: 10) {
                    Text("Downloading")
                    ProgressView()
                }
            } currentValueLabel: {
                Text("You Download: \((progress * 100).formatted())%")
            }
        
            NavigationLink("Next View", destination: PageFour())
            
        }.progressViewStyle(.circular).padding()
    }
}

struct PageThree_Previews: PreviewProvider {
    static var previews: some View {
        PageThree()
    }
}
