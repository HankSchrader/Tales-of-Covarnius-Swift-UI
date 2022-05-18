//
//  Part_1_Who_Trusts_Alien_Cowboys.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Who_Trusts_Alien_Cowboys: View {
    static let PageName = "Part_1_Who_Trusts_Alien_Cowboys"
    @State var showMenu = false
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "“That’s ok,” you tell Kayo, declining his offer. “I think we’ll come out with you and see if we can help.”\n\nWho knows? This could all be a trap!\n\n“Suit yourself, partner,” Kayo says with a smile. However, you can’t help but think he looks a little hurt that you didn’t trust him.\n\nYou and Chrono follow Kayo outside to the nearby stables where another being that looks similar to Kayo is busy working. This must be Kebo, you surmise.\n\nAfter Kayo explains your situation, the four of you walk back to the ship. Kayo and Kebo set to work immediately. You and Chrono just watch, unsure how to help."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Who_Trusts_Alien_Cowboys.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Covarnian Cruiser" : "Covarnian Cruiser iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Who_Trusts_Alien_Cowboys_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Who_Trusts_Alien_Cowboys()
    }
}
