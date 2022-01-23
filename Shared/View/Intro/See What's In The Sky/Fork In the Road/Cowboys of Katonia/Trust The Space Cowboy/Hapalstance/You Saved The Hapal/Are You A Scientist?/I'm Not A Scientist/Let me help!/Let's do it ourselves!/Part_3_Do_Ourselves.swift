//
//  Part_3_Do_Ourselves.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Do_Ourselves: View {
    static let PageName = "Part_3_Do_Ourselves"
    @State var showMenu = false
    var body: some View {
        let text =
        "You mull over the two options for a moment. Kneeling down, you pat Luna’s head and stare thoughtfully into space.\n\nDisguising yourselves as ambassadors may be tricky. It would require finding some of those fancy robes all the high ranking Covarnians wear. But at least that would make it easier to board the Sinisterian ship.\n\nOn the other hand, maybe keeping the mission covert is the way to go. Stay hidden and out of sight from the Sinisterians. Change the coordinates and get out before anyone ever realizes you’re there. After careful consideration, you tell Chrono..."
        
        let decision1 =  "Sneak onto the Sinisterian ship"
        let decision2 = "Disguise ourselves as ambassadors."
        let firstChoicePageName = Part_1_Boarding_Ticket.PageName
        let secondChoicePageName = Part_1_Diplomatic_Immunity.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Ambassador or Sneak", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Do_Ourselves_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Do_Ourselves()
    }
}
