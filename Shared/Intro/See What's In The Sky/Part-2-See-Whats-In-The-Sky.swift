//
//  Page 1-3-Part-2-See-Whats-In-The-Skey.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

struct Part_2_See_Whats_In_The_Sky: View {
    var body: some View {

            VStack {
        Text("Luna’s head tilts to the left, she is staring at the object in puzzlement as well. Could the two of you really be staring at a UFO? It doesn’t seem possible, you don’t even believe in aliens!\n\nBut the odd green creature in the UFO makes you think otherwise. You hear a loud hissing sound like the decompressing of air. The top of what appears to be an alien spaceship opens.\n\nYup, definitely an alien!")
            .fontWeight(.light)
            .padding()
                Spacer()
                NavigationLink(destination: Part_3_See_Whats_In_The_Sky()) {
               Text("Continue")
           }
                
    }
        
    }
}

struct Part_2_See_Whats_In_The_Sky_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_See_Whats_In_The_Sky()
    }
}
