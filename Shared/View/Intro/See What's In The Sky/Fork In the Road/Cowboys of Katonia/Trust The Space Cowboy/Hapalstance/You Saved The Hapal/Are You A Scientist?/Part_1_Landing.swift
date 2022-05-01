//
//  Part_1_Landing.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI
struct Part_1_Landing: View {
    @State var showMenu = false
    static let PageName = "Part_1_Landing"
    var body: some View {
        let text =
        "The next thing you know, you wake up with a loud yawn. A strange dream occupied your mind while you slept, something about an alien and a spaceship…\n\nYou glance frantically at your surroundings and it all comes back to you.\n\nChrono is waking up as well. “Ah, we’re finally here!” he announces, stretching out his long slender arms.\n\nThe ship descends onto a planet that looks like Earth. Aliens that look like Chrono surround the ship as you land. "
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_1_Landing.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Covarnius", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_1_Landing: View {
    @State var showMenu = false
    static let PageName = "Part_1_1_Landing"
    var body: some View {
        let text =
        "“Bonjour!” One of the aliens bellows as he steps closer to the ship. He seems to be the one in charge. Or at least, that’s what you assume based on the large crown worn atop his head.\n\n“You’re going to need to adjust your translators,” Chrono says with a yawn. “This Earthling doesn’t speak French.”\n\n“Who are you calling French?” you ask, looking from Chrono to the crown clad extraterrestrial."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Landing.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Chrono and Ship", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}
