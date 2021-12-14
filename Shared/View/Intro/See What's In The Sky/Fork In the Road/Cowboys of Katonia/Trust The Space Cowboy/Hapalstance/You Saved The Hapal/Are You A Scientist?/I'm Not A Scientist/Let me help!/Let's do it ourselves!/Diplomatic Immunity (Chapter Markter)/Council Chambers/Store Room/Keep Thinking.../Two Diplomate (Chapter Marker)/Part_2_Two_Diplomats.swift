//
//  Part_2_Two_Diplomats.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI
// When he takes the key, that data needs to be stored for later.
struct Part_2_Two_Diplomats: View {
    static let PageName = "Part_2_Two_Diplomats"
    @State var showMenu = false
    var body: some View {
        let text =
        "As you continue walking, you notice a shiny golden key dangling from the quartermaster’s belt. You wonder what it unlocks...maybe you should take it! You never know, it could come in handy.\n\nOn the other hand, it would be pretty risky to take. These Sinisterians seem like they mean business and probably wouldn’t take very kindly to the situation should you get caught.\n\nYou mull over the decision once more and decide:"
        
        let decision1 =  "Don't take it! Far too risky..."
        let decision2 = "Take the key."
        let firstChoicePageName = Part_1_Two_Diplomats.PageName
        let secondChoicePageName = Part_1_Take_Key.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Two_Diplomats_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Two_Diplomats()
    }
}
