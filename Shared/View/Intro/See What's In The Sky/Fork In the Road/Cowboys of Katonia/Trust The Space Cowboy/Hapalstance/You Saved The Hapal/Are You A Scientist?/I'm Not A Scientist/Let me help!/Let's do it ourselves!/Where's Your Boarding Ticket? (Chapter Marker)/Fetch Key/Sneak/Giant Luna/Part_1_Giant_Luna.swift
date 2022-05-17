//
//  Part_1_Giant_Luna.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Giant_Luna: View {
    static let PageName = "Part_1_Giant_Luna"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "You kneel down and level with Luna. “Are you ready girl? You’re about to save the world!” You pat Luna on the head and she barks reassuringly.\n\nChrono turns the dial to 'Humungous', points it at Luna and fires.\n\nThe blue wave envelopes Luna and she barks and runs in circles. Then suddenly...nothing happens.\n\nYou and your alien friend wait in anticipation, which quickly turns into panicked disappointment.\n\n “What happened?” Chrono says. “Luna was supposed to—”\n\nThe entire house rumbles. Suddenly, Luna is the size of you! She gives you a slobbery lick to tell you everything is ok.\n\nThen, before you know it, her head is hitting the ceiling. It dawns on you that it's critical you get out of the house. A look of understanding is communicated between you and Chrono.\n\nYou both scream “RUN!” and sprint out of the house."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Giant_Luna.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image:  isIPad ? "Big Luna iPad" : "Big Luna", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Giant_Luna_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Giant_Luna()
    }
}
