//
//  Part_1_Stank_Meat.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_1_Stank_Meat: View {
    static let PageName = "Part_1_Stank_Meat"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Luna likes meat,” you say quickly to Chrono. “So why wouldn’t growlics?”\n\nChrono nods approvingly at your logic.\n\nYou quickly grab the stinky brown hunk of meat. It appears to be sweating. Yuck! You throw it to the growlics and they wolf it down. You and Chrono take the opportunity to sneak past the animals, closing the kitchen door behind you.\n\nGreat job!"
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Stank_Meat.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Stank_Meat_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Stank_Meat()
    }
}
