//
//  Part_2_Fork_In_The_Road.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/11/21.
//

import SwiftUI

struct Part_2_Fork_In_The_Road: View {
    @State var showMenu = false
    static let PageName = "Part_2_Fork_In_The_Road"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "“Quickly, quickly,” the alien commands. “Covarnius can’t hold out much longer.”\n\nHe jumps back into the ship and you stumble into the seat next to his.\n\nLuna follows you into the spaceship. At least you’re not going alone! She finds a cozy corner to lay down in.\n\nAfter taking a quick peek at your surroundings, you notice that switches, dials and knobs encompass the entire vessel.\n\nYou stare back at the alien, “If I’m going back to Covarnius with you, at least tell me your name first.”"
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Fork_In_The_Road.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Chrono and Ship" : "Chrono and Ship iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Fork_In_The_Road_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Fork_In_The_Road()
    }
}
