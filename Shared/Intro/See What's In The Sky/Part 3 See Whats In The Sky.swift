//
//  Part 3 See Whats In The Sky.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_See_Whats_In_The_Sky: View {
    var body: some View {
    
            VStack {
        Text("The creature inside hops out of the aircraft. His body is long and slender. He appears frantic and in a great hurry.\n\nThe creature looks at you with his large round eyes. He scans you head to toe, silent for a moment, like a boxer sizing up an opponent. The alien is about your height. Maybe you could take him on?\n\nAll the scary alien movies you’ve ever watched flood into memory. What if he wants to dissect your brain? Or worse! The alien moves closer to you. Luna lets out a warning bark.")
                .fontWeight(.light)
                .padding()
            Spacer()
            NavigationLink(destination: Part_4_See_Whats_In_The_Sky()) {
           Text("Continue")
                   }
            }
        }
    
}

struct Part_3_See_Whats_In_The_Sky_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_See_Whats_In_The_Sky()
    }
}
