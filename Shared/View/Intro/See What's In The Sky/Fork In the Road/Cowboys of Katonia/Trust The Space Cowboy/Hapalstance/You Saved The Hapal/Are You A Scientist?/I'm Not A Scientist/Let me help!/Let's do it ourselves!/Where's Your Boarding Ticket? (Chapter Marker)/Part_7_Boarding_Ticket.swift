//
//  Part_7_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_7_Boarding_Ticket: View {
    var body: some View {
        let text =
        "Hours have passed by. You stare out the tiny porthole that looks out into deep, dark space. A small dot in the distance grows larger and alrger. It must be the ship’s destination: Covarnius.\n\nThe ship rumbles as it makes its landing on Covarnius.\n\nPeeking out the porthole, you see hordes of Sinisterians disembarking from the ship to start their invasion. Like Vikings from the days of yore, the Sinisterians wreak havoc.\n\nPanic sets in as you languish in the damp dungeon.\n\n“We have to think of something!” you whisper to Chrono. Between Luna’s incessant barking and the Sinisterian guard’s constant sneezing, you can barely get a thought in edgewise."
        getPageView(mainText: text, firstChoice: AnyView(Part_8_Boarding_Ticket()))
    }
}

struct Part_7_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_7_Boarding_Ticket()
    }
}
