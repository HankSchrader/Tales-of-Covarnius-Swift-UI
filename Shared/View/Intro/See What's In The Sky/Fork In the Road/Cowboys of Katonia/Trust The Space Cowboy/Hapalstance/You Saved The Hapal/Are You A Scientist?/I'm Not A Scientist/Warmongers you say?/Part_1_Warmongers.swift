//
//  Part_1_Warmongers.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Warmongers: View {
    static let PageName = "Part_1_Warmongers"
    @State var showMenu = false
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "You and Chrono walk in silence. If Covarnius is about to be invaded by a hostile race of aliens, you do NOT want to be there for that. You could get captured, enslaved, or worse. What could possibly be done to help?\n\nGoing home is clearly the wisest decision. But on the other hand, there is surely something that the Covarnians haven’t thought of yet. Perhaps you should stay and try to help. You mull over the situation as you continue walking towards the shipping area. A decision needs to be reached as soon as possible.\n\nChrono gives you one last, sad look. This is it. Go home or stay and help the Covarnians?"
        
        let decision1 = "I'm done. I just want to go home."
        let decision2 = "Never Give Up! We can do this."
        let firstChoicePageName = Abandonded_Chrono.PageName
        let secondChoicePageName = Part_1_Let_Me_Help.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ?  "Earth or Chrono" : "Earth or Chrono iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Warmongers_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Warmongers()
    }
}
