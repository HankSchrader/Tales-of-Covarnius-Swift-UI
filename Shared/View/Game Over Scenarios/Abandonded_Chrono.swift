//
//  Part_2_Warmongers.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Abandonded_Chrono: View {
    static let PageName = "Abandonded_Chrono"
    @State var showMenu = false

    var body: some View {
        let text =
        "You bid Chrono farewell and wish him the best of luck. You jump into the ship and Luna hops in after you. As the preprogrammed ship ascends into the sky, you take a final look at Covarnius. You see Chrono standing dejectedly below.\n\nIf only there was some way of stopping the Sinisterian invasion."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Abandonded_Chrono_2.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "stars", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Abandonded_Chrono_2: View {
    static let PageName = "Abandonded_Chrono_2"
    @State var showMenu = false

    var body: some View {
        let text =
        "After a brief nap in hypersleep, you wake up back on Earth.\n\nYou wonder what’s happening on Covarnius. Did the Sinisterians invade? Were the Covarnians able to defeat them?\n\nThe empty streets look the same as before. Cold and boring, but at least you're safe. You and Luna slowly walk back home.\n\nAs you look up into the clear night sky, you hope everything worked out for the Covarnians."
        let decision1 = Constants.GameOverPhrase
        let firstChoicePageName = "Title View"
        let storyView: StoryPayload = StoryPayload(text: text, image: "stars", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Abandonded_Chrono_Previews: PreviewProvider {
    static var previews: some View {
        Abandonded_Chrono()
    }
}
