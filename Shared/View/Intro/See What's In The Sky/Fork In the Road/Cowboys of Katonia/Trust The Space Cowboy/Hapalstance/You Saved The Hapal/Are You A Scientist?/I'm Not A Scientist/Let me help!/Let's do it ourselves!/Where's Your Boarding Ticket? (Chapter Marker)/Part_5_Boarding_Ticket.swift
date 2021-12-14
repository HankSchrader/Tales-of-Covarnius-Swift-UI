//
//  Part_5_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_5_Boarding_Ticket: View {
    static let PageName = "Part_5_Boarding_Ticket"
    @State var showMenu = false
    var body: some View {
        let text =
        "verything's going according to plan...until a horrifying creature emerges from behind a stack of crates!\n\nIt’s skin is rough and leathery, and a long tail extends behind it’s back. Cold, dark eyes stare back at you as you stand frozen next to the Covarnian ship. This must be a Sinisterian.\n\n“What are you doing here?” the Sinisterian asks in a rough voice.\n\nYou and Chrono exchange a look. No good excuses come to mind. Perhaps disguising yourselves as ambassadors would have been a better idea after all.\n\nSuddenly the Sinisterian sneezes violently. Slimy green ooze runs from his eyes and nose, dripping onto the floor below. “What IS that thing?” he asks, staring at Luna.\n\n“Luna's a dog,” you answer.\n\n“I don’t know what a dog is,” the Sinisterian answers between sneezes, “but as far as I’m concerned, you just boarded a Sinisterian ship with hostile intent!”\n\nThe creature sends you to jail."
        
     
        
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_6_Boarding_Ticket.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_5_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Boarding_Ticket()
    }
}
