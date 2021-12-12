//
//  Part_4_Save_The_Hapal.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_4_Save_The_Hapal: View {
    static let PageName = "Part_4_Save_The_Hapal"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Ok, onwards to Covarnius then,” Chrono says, “to stop the Sinisterians once and for all!”\n\nYou still want to go back to Earth but crashing the ship again isn’t going to get you there. “On to Covarnius,” you agree.\n\nHelping Kayo and Kina rescue their baby hapal made you happy. Maybe you’d be able to help the Covarnians too and then head back to Earth as an intergalactic hero.\n\nYou wonder what kind of issues the Covarnians are having as Chrono engages hypersleep. The last thought that crosses your mind is: What in the world is a Sinisterian? "
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Landing.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)

    }
}

struct Part_4_Save_The_Hapal_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Save_The_Hapal()
    }
}
