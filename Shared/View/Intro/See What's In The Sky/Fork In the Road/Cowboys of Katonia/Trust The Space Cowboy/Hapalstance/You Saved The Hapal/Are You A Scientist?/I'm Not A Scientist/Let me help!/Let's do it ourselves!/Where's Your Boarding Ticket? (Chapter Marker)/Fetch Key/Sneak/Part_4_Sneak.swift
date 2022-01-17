//
//  Part_4_Sneak.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Sneak: View {
    static let PageName = "Part_4_Sneak"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Wait!” you cry, \"test it on that first.\" You point at a tiny bug on the ground. It's a purple ant with two heads. It must be a native Covarnian bug.\n\n“You want me to test it on a little Murkblur?” Chrono asks. “We don’t have time for this!”\n\n“I just want to make sure it doesn't hurt Luna,” you say.\n\nChrono glances out his bedroom window. “The Sinisterians will be here any minute,” he exclaims."
        
        
        let decision1 = "Skip the test."
        let decision2 = "Test the ray on the Murkblur."
        let firstChoicePageName = Part_1_Giant_Luna.PageName
        let secondChoicePageName = Part_1_Murkblur.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Ray Gun", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
    }
}

struct Part_4_Sneak_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Sneak()
    }
}
