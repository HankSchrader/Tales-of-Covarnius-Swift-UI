//
//  Part_3_Store_Room.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Store_Room: View {
    static let PageName = "Part_3_Store_Room"
    @State var showMenu = false
    var body: some View {
        let text =
        "You, Chrono, and Luna make your way to a large lot to the side of the council chamber. Covarnian Cruisers are parked in neat rows, each one shiny and perfect. “Which one goes with our key card?” you ask as you survey the dozens and dozens of ships in the lot.\n\n“Don’t worry,” Chrono says. “These key cards are designed to be used in any of the cruisers.”\n\n“Well that settles that,” you say as you hop into the ship Chrono unlocked. Luna jumps in next and lets out a bark as if to say she is ready to go.\n\nChrono starts up the ship. Flashing lights emanate from the control panel as he flips switches and turns dials.\n\nSuddenly the ship is airborne and Covarnius becomes smaller and smaller in the distance.\n\nChrono has a look of true grit on his face. “Next stop: the Sinisterians ship.”"
       
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Store_Room.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "box", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Store_Room_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Store_Room()
    }
}
