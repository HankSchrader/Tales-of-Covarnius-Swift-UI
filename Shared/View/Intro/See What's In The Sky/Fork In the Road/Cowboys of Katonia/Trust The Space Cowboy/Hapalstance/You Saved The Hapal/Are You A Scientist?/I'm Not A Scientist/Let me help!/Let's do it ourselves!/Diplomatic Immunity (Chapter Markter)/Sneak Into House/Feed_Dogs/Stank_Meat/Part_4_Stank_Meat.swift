//
//  Part_4_Stank_Meat.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_4_Stank_Meat: View {
    static let PageName = "Part_4_Stank_Meat"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Well that settles that,” you say as you hop into the ship Chrono unlocked. Luna jumps in next to you and lets out a bark as if to say she is ready to go. Chrono quickly goes to work starting up the ship. Flashing lights emanate from the control panel as he flips switches and turns dials.\n\nIn the next moment, the ship is airborne and you watch through the glass as Covarnius becomes smaller and smaller in the distance.\n\nChrono looks over at you, a look of true grit on his face. “Next stop: the Sinisterians ship.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Store_Room.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Covarnian Cruiser", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)

    }
}

struct Part_4_Stank_Meat_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Stank_Meat()
    }
}
