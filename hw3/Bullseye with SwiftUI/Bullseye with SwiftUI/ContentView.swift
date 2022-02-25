//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State var num: Double = 50
    @State var toggle = false
    
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                Text("High Score")
                Text("0")
                    }
                .padding(.leading, 20)
                .padding(.top, 20)
                        
                Spacer()
                        
                VStack() {
                    Text("Current Level")
                    Text("1")
                    }
                .padding(.trailing, 20)
                .padding(.top, 20)
                }
                    
                Spacer()
            
                //code here
            Text("Move the slider to:").font(.system(size: 30))
            
                //text element for 25
            Text("25").font(.system(size: 30))
            
                //slider element
            VStack {
                Slider(value: $num, in: 0...100)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
            }
            
                //button element for check
            Button("Check") {
                print("Check")
            }
            
                //text element for exact mode
            Spacer()
            
            Text("Exact Mode?")
            
                //toggle element
            Toggle("", isOn: $toggle)
                .labelsHidden()
            
                }
    }
}

