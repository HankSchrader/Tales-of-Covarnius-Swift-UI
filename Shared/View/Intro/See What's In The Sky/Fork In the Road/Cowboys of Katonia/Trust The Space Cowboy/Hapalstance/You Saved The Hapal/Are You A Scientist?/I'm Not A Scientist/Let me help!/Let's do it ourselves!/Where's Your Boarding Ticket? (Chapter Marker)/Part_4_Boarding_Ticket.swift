//
//  Part_4_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Boarding_Ticket: View {
    static let PageName = "Part_4_Boarding_Ticket"
    @State var showMenu = false
     
    var body: some View {
        let text = "You make your way through the deep recesses of space. Before you know it, you're approaching the Sinisterian ship.\n\n“So here’s the plan,” Chrono announces. “After I steer the ship into the cargo loading dock, then we’ll sneak on board, change the destination coordinates, and head back to Covarnius as heroes!\"\n\n“Sounds good,” you respond as Chrono steers the ship into the dock.\n\n“And before I forget, take this,” Chrono says as he hands you a small device that looks sort of like a hearing aid. “Just in case we run into any Sinisterans, this device will translate what they say so you can understand and vice versa.”\n\n“Cool!” you exclaim, grabbing the device. Chrono jumps out of the ship into the cargo hold and you quickly follow with Luna close behind."
        
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_5_Boarding_Ticket.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Covarnian Cruiser" : "Covarnian Cruiser iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Boarding_Ticket()
    }
}
