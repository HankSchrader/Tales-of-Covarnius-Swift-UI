//
//  Part_6_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_6_Boarding_Ticket: View {
    var body: some View {
        let text =
        "“I told you we should have gone with the other idea,” Chrono grumbles as the two of you sit in the brig.“What?!” You fire back. “No you didn’t!”“Well I was thinking it,” Chrono retorts.“Thinking and telling are two completely different things.”Luna lets out a bark that echoes through the cold, damp holding cell.“Luna’s right,” you grumble. “We’ll never get out of here if we keep arguing.”"
        
        getPageView(mainText: text, firstChoice: AnyView(Part_7_Boarding_Ticket()))
        
        
    }
}

struct Part_6_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_6_Boarding_Ticket()
    }
}