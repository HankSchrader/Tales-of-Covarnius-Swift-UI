//
//  Part_1_Make_A_Run_For_It.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Make_A_Run_For_It: View {
    var body: some View {
        VStack {
        Text("Better safe than sorry!\n\n“Chrono, follow me!” you shout as you take off into a sprint. Luna runs along next to you, tongue flying in the breeze. After taking a quick glance over your shoulder, you notice the cowboy looking alien is standing in the same spot as before.\n\nChrono runs right along with you, while Luna lopes about ten feet in front. \n\nThe ground is dry and cracked under foot and there doesn’t seem to be anything around for miles, other than the occasional cactus-like shrubbery.\n\nSuddenly, you’re aware of an intense thirst like you’ve never had before. After a few more minutes of running, you stop and sit down to rest. Chrono and Luna do the same, panting and trying to catch their breath.")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_2_Make_A_Run_For_It()) {
                       Text("Continue")
                   }
        }
    }
}

struct Part_1_Make_A_Run_For_It_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Make_A_Run_For_It()
    }
}
