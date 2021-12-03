//
//  Part_4_Sneak.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Sneak: View {
    var body: some View {
        let text =
        "“You want me to test it on a little Murkblur?” Chrono asks. “We don’t have time for this!”\n\n“I just want to make sure it doesn't hurt Luna,” you say.\n\nChrono glances out his bedroom window. “The Sinisterians will be here any minute,” he exclaims."
        
        getPageView(mainText: text, firstChoice: AnyView(Got_Caught()), decision1: "Skip the test.", secondChoice: AnyView(Part_1_Crash_Wall()), decision2: "Test the ray on the Murkblur.")
        
    }
}

struct Part_4_Sneak_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Sneak()
    }
}
