//
//  Part_8_Boarding_Ticket.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_8_Boarding_Ticket: View {
    static let PageName = "Part_8_Boarding_Ticket"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "“Oh,” Chrono whispers, “I’ve thought of something alright.” You glance over at Chrono and notice that he is fiddling with some strange gadget.\n\nBefore you have a chance to ask him about his idea, the guard screams, “I can’t take it anymore! I need to go to the infirmary, maybe they'll have something that can help.” Green slime oozes from his nose and eyes. His sneezing and coughing are the worst you have ever heard. The guard points at Luna before making his hasty departure, “It’s all because of that...that thing!”\n\n“Sinisterians must be allergic to dogs…” you mumble, but there’s just no time to think about that. Luna seems to be trying to get your attention."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_9_Boarding_Ticket.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Brig" : "Brig iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_8_Boarding_Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Part_8_Boarding_Ticket()
    }
}
