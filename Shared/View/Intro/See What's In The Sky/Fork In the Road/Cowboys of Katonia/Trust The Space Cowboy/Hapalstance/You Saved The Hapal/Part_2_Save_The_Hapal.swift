//
//  Part_2_Save_The_Hapal.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Save_The_Hapal: View {
    static let PageName = "Part_2_Save_The_Hapal"
    @State var showMenu = false
    var body: some View {
        let text =
        "You hear the baby hapal let out another cry. It’s almost dark out now and even darker in the small cave.\n\nThe cave's opening is small, but not too small for you. You stoop down to the opening. It’s a tight squeeze but you just make it.\n\nHuddled in a corner of the cave, you see a strange looking animal. It's a little larger than Luna. It looks somewhat like a horse but with the same pale orange coloring of Kayo and Kina. A long antenna protrudes from the small creature's head, just above it’s three large eyes that look filled with terror.\n\n“It’s ok,” you tell the baby hapal. You extend your hand as you crouch down near the small animal. The baby hapal takes a step toward you. You reach out and scratch its ears the same way you do with Luna.\n\n“Let’s get you out of here,” you tell the baby hapal. You pick up the small animal and make your way to the opening in the cave. Kayo is on the other side, peering in with a small light. You hand the baby hapal to him and then make your way out."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Save_The_Hapal.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Save_The_Hapal_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Save_The_Hapal()
    }
}
