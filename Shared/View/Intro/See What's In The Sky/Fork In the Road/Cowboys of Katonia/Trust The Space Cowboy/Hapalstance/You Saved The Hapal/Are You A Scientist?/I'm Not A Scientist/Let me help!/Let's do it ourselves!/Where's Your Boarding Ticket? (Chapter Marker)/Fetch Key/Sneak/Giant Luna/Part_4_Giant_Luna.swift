//
//  Part_4_Giant_Luna.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Giant_Luna: View {
    static let PageName = "Part_4_Giant_Luna"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "You dance around on the lawn with Chrono. You did it! The Sinisterians have been stopped. “Let’s go tell King Zanarq!” Chrono says. “The invasion is over!”\n\nUnfortunately, your celebration is cut short by coughing. Luna may have stopped the Sinisterians, but there’s dog fur up to your ankles as far as the eye can see! Not to mention an eighty foot dog trampling over the homes of everyone, destroying them.\n\nThe Sinisterians are defeated…but do you really want to take responsibility for all this damage? You tug on your shirt and shift your feet. Maybe it’d be best to just shrink Luna back to normal and go back to Earth!\n\nChrono looks at you and says, “Ready to tell the King?”"
        
        let decision1 = "Tell King Zanarq the good news."
        let decision2 = "Don't tell the king."
        let firstChoicePageName = Part_1_Tell.PageName
        let secondChoicePageName = Part_1_Dont_Tell.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Dance on Lawn",  decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Giant_Luna_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Giant_Luna()
    }
}
