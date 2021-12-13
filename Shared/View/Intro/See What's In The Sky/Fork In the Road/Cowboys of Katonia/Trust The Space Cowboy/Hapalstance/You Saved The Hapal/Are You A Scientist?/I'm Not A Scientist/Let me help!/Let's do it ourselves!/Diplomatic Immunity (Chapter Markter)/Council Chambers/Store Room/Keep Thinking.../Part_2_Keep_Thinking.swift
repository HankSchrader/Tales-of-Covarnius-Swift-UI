//
//  Part_2_Keep_Thinking.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Keep_Thinking: View {
    static let PageName = "Part_2_Keep_Thinking"
    @State var showMenu = false
    var body: some View {
        let text =
        "A large ship in the distance comes into view. It’s way bigger than your ship. It’s even bigger than your house back on Earth! “Are those the Sinisterians?” you ask, glancing over at Chrono.\n\n“That’s them,” Chrono confirms as he steers the ship into the Sinisterian ship's docking port.\n\nYou exit the ship and are greeted by a large being. It must be a Sinisterian. His skin is the color of charcoal and looks tough and scaly. “What is your business?” he inquires in a deep, monotone voice.\n\n Luna sniffs at the Sinisterian’s long, scaly tail and lets out a growl deep in her throat.\n\n“What is that?” the Sinisterian asks, taking a step backward.\n\n“We’re Covarnian ambassadors here to see the Sinisterian in charge,” Chrono says ignoring the second question."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_3_Boarding_Ticket()))
    }
}

struct Part_2_Keep_Thinking_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Keep_Thinking()
    }
}
