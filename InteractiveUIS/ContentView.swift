//
//  ContentView.swift
//  InteractiveUIS
//
//  Created by scholar on 8/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        
        VStack {
    
            Text(textTitle)
                .fontWeight(.semibold)
                .font(.title)
                .foregroundColor(Color(hue: 0.56, saturation: 1.0, brightness: 1.0, opacity: 0.754))
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .autocorrectionDisabled()
                .font(.title2)
                .border(Color.gray, width: 1)
                .padding()
            
            Button("Submit Name") {
                textTitle = ("Welcome, \(name)!")
            }
            .font(.title2)
            .fontWeight(.semibold)
            .tint(.cyan)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
            
            
            
            
                
        }
    
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
