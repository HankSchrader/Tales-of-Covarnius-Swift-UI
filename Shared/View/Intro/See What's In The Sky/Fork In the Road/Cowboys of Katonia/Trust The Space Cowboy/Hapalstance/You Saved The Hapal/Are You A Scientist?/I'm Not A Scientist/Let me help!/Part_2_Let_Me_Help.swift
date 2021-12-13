//
//  Part_2_Let_Me_Help.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Let_Me_Help: View {
    static let PageName = "Part_2_Let_Me_Help"
    @State var showMenu = false
    var body: some View {
        let text =
        "Chrono looks at you with skepticism. “But how?” he asks, scratching his green chin.“You said that all the spaceships can be programmed to go anywhere in the universe.”“That’s right,” Chrono agrees, nodding his head slowly.“Well, then what if we program the Sinisterian ship to go somewhere else? Somewhere like a black hole or a wormhole or something. Then, they’d never even make it to Covarnius!\""
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Let_Me_Help.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
    }
}

struct Part_2_Let_Me_Help_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Let_Me_Help()
    }
}
