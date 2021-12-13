//
//  Part_2_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Boarding_Ticket: View {
    static let PageName = "Part_2_Boarding_Ticket"
    @State var showMenu = false
    var body: some View {
        let text =
        "“What kind of weird growlic is that?” the ambassador yells. “Keep her away from me!” He gives a final frightened look at Luna, and hurries off.\n\nWith a grin, you bend down and pick up the keycard. “You mean like this?”\n\nChrono smiles in agreement, “Yes, just like that. Good job, Luna!” She nuzzles Chrono and barks happily.\n\nThe incident seems too good to be true. Fate must be telling you to go ahead with your plan. \"Three unlikely heroes save Covarnius.\"...you can see the headlines now!\n\n…Then again, sneaking onto the Sinisterian ship could be very risky. But on the other hand, you have the keycard! It must be fate. What to do?"
        
        getPageView(mainText: text, firstChoice: AnyView(Part_3_Boarding_Ticket()), decision1: "Continue as planned.", secondChoice: AnyView(Part_1_Diplomatic_Immunity()), decision2: "I changed my mind.")
    }
}

struct Part_2_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Boarding_Ticket()
    }
}
