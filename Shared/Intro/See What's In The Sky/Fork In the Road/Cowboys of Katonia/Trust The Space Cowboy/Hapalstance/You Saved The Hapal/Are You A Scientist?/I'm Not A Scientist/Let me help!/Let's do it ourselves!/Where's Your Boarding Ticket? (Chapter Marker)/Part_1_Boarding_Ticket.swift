//
//  Part_1_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Boarding_Ticket: View {
    var body: some View {
        let text =
        "“I don’t like the idea of sneaking into the council chamber or into an ambassador’s home,” you state flatly. “I think it might be best if we skip straight to boarding the Sinisterian’s ship. We’ll be extra stealthy, we’ll change the coordinates and be out of there before the Sinisterians even know we’re there.”\n\nChrono nods and scratches his chin thoughtfully. “The only problem is, we don’t have a key card.” Sighing dejectedly, he continues, “We can’t take a Covarnian cruiser without one.”\n\nAt that very moment, a Covarnian ambassador walks by the three of you. Suddenly, Luna lets out a playful bark. The ambassador, clearly frightened, jumps backwards and nearly trips. Just as he does, a keycard falls out of his flowing robe."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_2_Boarding_Ticket()))
    }
}

struct Part_1_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Boarding_Ticket()
    }
}
