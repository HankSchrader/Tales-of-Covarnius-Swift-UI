//
//  Part_4_Clog_Toilet.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Clog_Toilet: View {
    static let PageName = "Part_4_Clog_Toilet"
    @State var showMenu = false
    var body: some View {
        let text =
        "“What does this say?” you cry to yourself. As if the key hears you, the scrawl rearranges, mixes and molds into something more familiar: English.\n\nIt says, “Hypersleep disengagement key”. You stare intently at the key. Could this provide any value? Does this even matter? Maybe you should just help Chrono. The aliens have already been distracted, no reason to push your luck!"
        

        
        let decision1 =  "Help Chrono."
        let decision2 =  "Create another distraction."
        let firstChoicePageName = Part_1_Help_Chrono.PageName
        let secondChoicePageName = Part_5_Clog_Toilet.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Clog_Toilet_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Clog_Toilet()
    }
}
