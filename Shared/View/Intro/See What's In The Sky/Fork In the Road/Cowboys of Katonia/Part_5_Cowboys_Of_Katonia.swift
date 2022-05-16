//
//  Part_5_Cowboys_Of_Katonia.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_5_Cowboys_Of_Katonia: View {
    static let PageName = "Part_5_Cowboys_Of_Katonia"
    @State var showMenu = false
    var body: some View {
       let text = "The alien babbles in a language that you have never heard.\n\n“I’m sorry, but I don’t understand,” you say, shrugging your shoulders.\n\nThe alien looks at you, as if he is straining to hear. Then he nods his head and taps the translator on his ear.\n\n“Howdy, you folks having some trouble?” His voice is now in English, he must have the same device as Chrono!\n\nWith a broken down ship, you don’t have many options. The way you see it, you can either trust the space cowboy and hope he is as friendly as he seems. Or, you can make a run for it. You mull over the situation for a moment and decide to: "
        let decision1 = "Make a run for it!"
        let decision2 = "Trust The Space Cowboy"
        let firstChoicePageName = Part_1_Make_A_Run_For_It.PageName
        let secondChoicePageName = Part_1_Trust_The_Space_Cowboy.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Katonian", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)

    }
}

struct Part_5_Cowboys_Of_Katonia_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Cowboys_Of_Katonia()
    }
}
