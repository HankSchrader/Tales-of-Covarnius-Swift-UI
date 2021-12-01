//
//  Page 1-3-See-What-In-The-Sky.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

struct Part_1_See_What_In_The_Sky: View {
    var body: some View {
    
            VStack {
            
        Text("Run away? No way, this is too good to miss!\n\nYou stop and look at the strange object descending slowly from the sky. As it gets closer, you see a strange creature inside, just behind the glass encasing. His complexion is green and he has two antennae protruding from his head.\n\nButterflies fill your stomach. Maybe you should have ran while you had the chance...")
                .fontWeight(.light)
                .padding()
                Spacer()
        NavigationLink(destination: Part_2_See_Whats_In_The_Sky()) {
                   Text("Continue")
               }
        
        }
    }
}

struct Part_1_See_What_In_The_Sky_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_See_What_In_The_Sky()
    }
}
