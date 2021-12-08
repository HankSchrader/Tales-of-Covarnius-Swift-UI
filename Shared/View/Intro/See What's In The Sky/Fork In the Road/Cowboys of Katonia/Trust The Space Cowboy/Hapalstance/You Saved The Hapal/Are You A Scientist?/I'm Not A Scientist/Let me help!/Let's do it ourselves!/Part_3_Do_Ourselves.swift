//
//  Part_3_Do_Ourselves.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Do_Ourselves: View {
    var body: some View {
        let text =
        "You mull over the two options for a moment. Kneeling down, you pat Luna’s head and stare thoughtfully into space.\n\nDisguising yourselves as ambassadors may be tricky. It would require finding some of those fancy robes all the high ranking Covarnians wear. But at least that would make it easier to board the Sinisterian ship.\n\nOn the other hand, maybe keeping the mission covert is the way to go. Stay hidden and out of sight from the Sinisterians. Change the coordinates and get out before anyone ever realizes you’re there. After careful consideration, you tell Chrono..."
        
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Boarding_Ticket()), decision1: "Sneak onto the Sinisterian ship", secondChoice: AnyView(Part_1_Diplomatic_Immunity()), decision2: "Disguise ourselves as ambassadors.")
    }
}

struct Part_3_Do_Ourselves_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Do_Ourselves()
    }
}
