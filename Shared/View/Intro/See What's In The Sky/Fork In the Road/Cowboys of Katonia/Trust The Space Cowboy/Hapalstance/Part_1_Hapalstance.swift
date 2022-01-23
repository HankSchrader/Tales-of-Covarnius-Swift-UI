//
//  Part_3_Who_Trusts_Alien_Cowboys.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Hapalstance: View {
    static let PageName = "Part_1_Hapalstance"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Thanks for putting your trust in us!” Kayo says appreciatively. He seems like a nice enough guy.\n\nKayo leaves the house in search of Kebo. You and Chrono plop down on the couch in front of the roaring fire, and Luna stretches out nearby on a fluffy rug. Kina brings you a tray of something called “Mekop”. It tastes like a citrusy sugar cookie.\n\nAfter eating until your stomach is about to burst, you quickly fall asleep. The next thing you know, the sound of Kayo’s voice awakens you from your slumber.\n\n“Your ship should be all set now, partner,” Kayo says happily"
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Hapalstance.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Mekop", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Hapalstance_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Hapalstance()
    }
}
