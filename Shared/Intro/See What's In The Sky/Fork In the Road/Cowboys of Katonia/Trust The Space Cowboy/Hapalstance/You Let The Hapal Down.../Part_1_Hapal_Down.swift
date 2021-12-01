//
//  Part_1_Hapal_Down.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Hapal_Down: View {
    var body: some View {
        VStack {
        Text("You squint into the direction that Kayo shot off in. There’s nothing you could have done anyway. Kayo's a professional after all, he and his family can handle the distressed Hapal. Who knows? Maybe it just stubbed its toe. (Or hoof, or paw...or whatever.)\n\nChrono appears relieved by your decision, he doesn’t seem to share your moral doubts.\n\n“Ok, onwards to Covarnius then,” Chrono says happily.\n\nYou still want to go back to Earth but crashing the ship again isn’t going to get you there. “On to Covarnius,” you agree with Chrono, sitting in the spaceship’s comfortable seat.")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_2_Hapal_Down()) {
                       Text("Continue")
                   }.padding()
        }
    }
}

struct Part_1_Hapal_Down_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Hapal_Down()
    }
}
