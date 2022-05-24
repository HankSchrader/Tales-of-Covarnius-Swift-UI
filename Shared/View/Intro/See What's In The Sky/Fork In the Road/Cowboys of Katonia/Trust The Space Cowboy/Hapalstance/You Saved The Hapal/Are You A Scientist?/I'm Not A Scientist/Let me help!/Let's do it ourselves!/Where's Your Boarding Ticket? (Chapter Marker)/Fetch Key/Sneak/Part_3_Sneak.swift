//
//  Part_3_Sneak.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Sneak: View {
    static let PageName = "Part_3_Sneak"
    @State var showMenu = false
     
    var body: some View {
        let text =
        "“...That would have been a good place to start troubleshooting,” Chrono says. “It’s ok,” you say, “it doesn't matter now. They're only one door away now!” A gang of Sinisterians are slamming their fists against Chrono’s next door neighbor’s home. It’s time to get this thing working!\n\n“Let’s do it!” Chrono exclaims, pointing the ray at the unsuspecting Luna. Suddenly, a wave of anxiety sweeps over you."

        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Sneak.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Growth Ray" : "Growth Ray iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Sneak_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Sneak()
    }
}
