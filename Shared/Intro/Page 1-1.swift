//
//  Page 1-1.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import Foundation
import SwiftUI

struct ContentViewPageChapter1Page1: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Bright red and yellow leaves—the hallmark of autumn–crunch underneath your sneakers. You walk your dog Luna down a neighborhood street, without a care in the world. The wind whips against your face and the streets are eerily empty.\n\n As much as you enjoy walking Luna, you’re still looking forward to getting back home, making a snack and watching T.V.\n\nJust as you are about to circle back home, a strange shape emerges from the sky. It’s large and shaped like a saucer. Multi-colored lights blink all over the aircraft. It looks somewhat like a strangely shaped Christmas tree. Your first instinct is to run away, but you also want to see what the strange object is. ")
                    .fontWeight(.light)
                    .padding()
                    Spacer()
                
                NavigationLink(destination: Page_1_2().navigationBarBackButtonHidden(true)) {
                           Text("Run Away!")
                       }
                .padding()
                NavigationLink(destination: Part_1_See_What_In_The_Sky().navigationBarBackButtonHidden(true)) {
                           Text("See what's in the sky.")
                }.padding()
        }
                
    }
}
}

struct ContentViewPageChapter1Page1_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewPageChapter1Page1()
    }
}
