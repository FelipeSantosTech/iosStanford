//
//  ContentView.swift
//  iosStanford
//
//  Created by Paulo Marcelo Santos on 23/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {//we use leading and trailing instead of left and right. spacing can be negative
        VStack(alignment: .leading, spacing: -7) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello,some suckers paid for this shit!")
            Text("I'm getting it for free")
            Text("I'm joking ofc")
            Image(systemName: "checklist")// thats how you call images from the library
                .imageScale(.large)
                .foregroundStyle(.purple)
        }
        .padding()
        
        ZStack{
            Circle()
            Image(systemName: "tree")
                .foregroundStyle(.white)
                .imageScale(.large)
            
        }
    }
    
    
    
}

#Preview {
    ContentView()
}
