//
//  Part_4_Not_Scientist.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_4_Not_Scientist: View {
    static let PageName = "Part_4_Not_Scientist"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Surely there is something that can be done,” you respond.\n\n“I’m afraid not,” Chrono says. \"Our only hope was the Earthling scientist. He would've been able to complete the cloaking device our own scientists have been working on.\"\n\n“Well can’t we just go back to Earth and get the right person this time?” you counter, trying to find a solution.\n\n“It’s just too late,” Chrono informs you. “There isn’t enough time to make it all the way back to Earth and then to Covarnius before the Sinisterians arrive.”\n\nChrono begins to walk slowly, his head hanging in defeat. “Let’s get you back to Earth.”"
        
        let decision1 = "Warmongers you say? I'm outta here."
        let decision2 = "Let Me Help!"
        let firstChoicePageName = Part_1_Warmongers.PageName
        let secondChoicePageName = Part_1_Let_Me_Help.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Zanarq", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Not_Scientist_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Not_Scientist()
    }
}
