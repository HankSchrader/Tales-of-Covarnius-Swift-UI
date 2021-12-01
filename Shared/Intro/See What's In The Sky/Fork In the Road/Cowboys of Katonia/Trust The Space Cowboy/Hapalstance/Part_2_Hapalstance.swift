//
//  Part_2_Hapalstance.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Hapalstance: View {
    var body: some View {
        VStack {
        Text("You stand up and stretch. “Thank you so much,” you say with a yawn. You almost feel bad for suspecting him of being a thief.\n\nKayo walks with you outside to the ship.\n\n“Thank you so much, Kayo!” you say gratefully. Getting the ship fixed means you're one step closer to getting home...or at least getting off this planet.\n\n“Yes Kayo, we are eternally grateful!” Chrono chimes in.\n\nKayo laughs heartily. “No problem! Let me lead you back to your ship. It’s not too far from here.”")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_3_Hapalstance()) {
                       Text("Continue")
                   }.padding()
        }
    }
}

struct Part_2_Hapalstance_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Hapalstance()
    }
}
