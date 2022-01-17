//
//  Part_7_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_7_Boarding_Ticket: View {
    static let PageName = "Part_7_Boarding_Ticket"
    @State var showMenu = false
    var body: some View {
        let text =
        "Hours have passed by. You stare out the tiny porthole that looks out into deep, dark space. A small dot in the distance grows larger and alrger. It must be the ship’s destination: Covarnius.\n\nThe ship rumbles as it makes its landing on Covarnius.\n\nPeeking out the porthole, you see hordes of Sinisterians disembarking from the ship to start their invasion. Like Vikings from the days of yore, the Sinisterians wreak havoc.\n\nPanic sets in as you languish in the damp dungeon.\n\n“We have to think of something!” you whisper to Chrono. Between Luna’s incessant barking and the Sinisterian guard’s constant sneezing, you can barely get a thought in edgewise."
      
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_8_Boarding_Ticket.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Covarnian Cruiser", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_7_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_7_Boarding_Ticket()
    }
}
