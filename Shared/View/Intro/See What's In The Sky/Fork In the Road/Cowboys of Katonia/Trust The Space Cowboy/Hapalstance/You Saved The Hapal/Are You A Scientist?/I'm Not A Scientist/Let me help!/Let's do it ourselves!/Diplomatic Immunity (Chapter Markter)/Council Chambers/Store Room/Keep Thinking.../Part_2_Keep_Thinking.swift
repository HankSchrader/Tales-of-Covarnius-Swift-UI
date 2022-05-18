//
//  Part_2_Keep_Thinking.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Keep_Thinking: View {
    static let PageName = "Part_2_Keep_Thinking"
    let isIpad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "Several large ships comes into view. They're even bigger than your house back on Earth! “Are those the Sinisterians?” you ask, glancing over at Chrono.\n\n“That’s them,” Chrono confirms as he steers the ship into the Sinisterian ship's docking port.\n\nYou exit the ship and are greeted by a large being. It must be a Sinisterian. “What is your business?” he asks in a deep, monotone voice.\n\n Luna sniffs the Sinisterian’s tail and lets out a growl deep in her throat.\n\n“What is that?” the Sinisterian asks, taking a step backward.\n\n“We’re Covarnian ambassadors here to see the Sinisterian in charge,” Chrono says, ignoring the second question."
        
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Keep_Thinking.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIpad ? "Covarnius iPad" : "Covarnius", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Keep_Thinking_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Keep_Thinking()
    }
}
