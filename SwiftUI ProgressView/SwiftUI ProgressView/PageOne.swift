//
//  ContentView.swift
//  SwiftUI ProgressView
//
//  Created by RMP on 14/06/1448 AH.
//

import SwiftUI

struct PageOne: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack(spacing:20) {
                    ProgressView()
                    ProgressView("Loading")
                    ProgressView {
                        Text("Wait").bold()
                    }
                    Spacer()
                    NavigationLink("Next Pages", destination: PageTwo())
                }
                .padding()
                
            }
        } else {
            NavigationView {
                VStack(spacing:20) {
                    ProgressView()
                    ProgressView("Loading")
                    ProgressView {
                        Text("Wait").bold()
                    }
                    Spacer()
                    NavigationLink("Next Pages", destination: PageTwo())
                }
                .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PageOne()
    }
}
