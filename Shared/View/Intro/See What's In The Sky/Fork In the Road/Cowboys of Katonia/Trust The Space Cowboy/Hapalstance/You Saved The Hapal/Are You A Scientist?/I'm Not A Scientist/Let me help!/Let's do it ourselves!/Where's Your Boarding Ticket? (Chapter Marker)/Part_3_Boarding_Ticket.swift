//
//  Part_3_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Boarding_Ticket: View {
    static let PageName = "Part_3_Boarding_Ticket"
    @State var showMenu = false
    var body: some View {
        let text =
        "The three of you arrive at a large lot extending behind the council chamber. Covarnian Cruisers are parked in neat rows, each one shiny and perfect. “Which one goes with our key card?” you ask worriedly as you survey the dozens and dozens of ships in the lot.\n\n“Don’t worry,” Chrono says with a smile. “These key cards are designed to be used in any of the cruisers.”\n\n“Well that settles that,” you say as you hop into the ship Chrono unlocked. Luna jumps in next to you and lets out a bark as if to say she is ready to go. Chrono quickly goes to work starting up the ship. Flashing lights emanate from the control panel as he flips switches and turns dials."
       
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Boarding_Ticket.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Covarnian Cruiser", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Boarding_Ticket()
    }
}
