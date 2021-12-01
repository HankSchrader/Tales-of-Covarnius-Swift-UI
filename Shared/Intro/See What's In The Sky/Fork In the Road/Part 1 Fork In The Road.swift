//
//  Part 1 Fork In The Road.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Fork_In_The_Road: View {
    var body: some View {
    
            VStack {
        Text("After careful consideration, you decide the alien is probably not going to dissect your brain. The pleading look in his eyes and frightened demeanor give the impression that he does need help.\n\nAt the very least, you’ll get out of all the math homework your teacher assigned today. You cautiously approach the green hued creature. Before you know it, he is insisting you enter the spaceship.\n\n“Quickly, quickly,” the alien commands. “Covarnius can’t hold out much longer.”\n\nHe jumps back into the ship and you stumble into the seat next to his.\n\nLuna follows you into the spaceship. At least you’re not going alone! She finds a cozy corner to lay down in.\n\nAfter taking a quick peek at your surroundings, you notice that switches, dials and knobs encompass the entire vessel.\n\nYou stare at the alien defiantly, “If I’m going back to Covarnius with you, at least tell me your name first.” ")
                    .fontWeight(.light)
                    .padding()
                    Spacer()
            NavigationLink(destination: Part_2_See_Whats_In_The_Sky()) {
                       Text("Continue")
                   }
            }
        
    }
}

struct Part_1_Fork_In_The_Road_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Fork_In_The_Road()
    }
}
