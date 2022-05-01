//
//  Part_6_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_6_Boarding_Ticket: View {
    static let PageName = "Part_6_Boarding_Ticket"
    @State var showMenu = false
    var body: some View {
        let text =
        "“I told you we should have gone with the other idea,” Chrono grumbles as the two of you sit in the brig.\n\n“What?!” You fire back.\n\n“No you didn’t!”\n\n“Well I was thinking it,” Chrono retorts.\n\n“Thinking and telling are two completely different things.\n\n”Luna lets out a bark that echoes through the cold, damp holding cell.“Luna’s right,” you grumble. “We’ll never get out of here if we keep arguing.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_7_Boarding_Ticket.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Brig", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
        
    }
}

struct Part_6_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_6_Boarding_Ticket()
    }
}
