//
//  PageFour().swift
//  SwiftUI ProgressView
//
//  Created by RMP on 14/06/1448 AH.
//

import SwiftUI

struct PageFour: View {
    
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
            
        }.progressViewStyle(.linear).padding()
    }
}

struct PageFour_Previews: PreviewProvider {
    static var previews: some View {
        PageFour()
    }
}
