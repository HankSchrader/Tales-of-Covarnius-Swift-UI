//
//  Part_2_Save_The_Hapal.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Save_The_Hapal: View {
    var body: some View {
        VStack {
        Text("You hear the baby hapal let out another cry. It’s almost dark out now and even darker in the small cave.\n\nYou look at the opening in the cave. It’s small, but not too small for you. Without hesitation, you stoop down to the opening. It’s a tight squeeze but you just barely make it. The setting sun allows just enough light to see into your dark surroundings.\n\nHuddled in a corner of the cave, you see a strange looking animal, a little larger than Luna. It looks somewhat like a horse but with the same pale orange coloring of Kayo and Kina. A long antenna protrudes from the small creature's head, just above it’s three large eyes that look filled with terror.\n\n“It’s ok,” you tell the baby hapal. You extend your hand as you crouch down near the small animal. The baby hapal takes a step toward you. You reach out and scratch its ears the same way you do with Luna.\n\n“Let’s get you out of here,” you tell the baby hapal in a soothing voice. You pick up the small animal and make your way to the opening in the cave. Kayo is on the other side, peering in with a small light. You hand the baby hapal to him and then make your way out.")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_3_Save_The_Hapal()) {
                       Text("Continue")
                   }.padding()
        }
    }
}

struct Part_2_Save_The_Hapal_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Save_The_Hapal()
    }
}
