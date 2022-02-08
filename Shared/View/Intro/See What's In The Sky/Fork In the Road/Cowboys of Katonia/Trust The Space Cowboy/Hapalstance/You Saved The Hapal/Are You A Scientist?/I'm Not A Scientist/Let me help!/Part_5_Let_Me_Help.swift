//
//  Part_5_Let_Me_Help.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_5_Let_Me_Help: View {
    static let PageName = "Part_5_Let_Me_Help"
    @State var showMenu = false
    var body: some View {
        let text =
        "“That might be the worst plan I have ever heard,” King Zanarq responds quickly. “It’s almost certain death for anyone who would undertake such a mission.” King Zanarq waves his hand dismissively. The guards respond by opening the door and escorting the three of you outside.\n\n“Well that didn’t work as planned,” Chrono says matter-of-factly. “Ready to give up yet?”\n\n You think it over for a moment and respond..."
        let decision1 =  "Let's do it ourselves!"
        let decision2 = "I give up. At least we tried..."
        let firstChoicePageName = Part_1_Do_Ourselves.PageName
        let secondChoicePageName = Part_1_Try_Give_Up.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_5_Let_Me_Help_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Let_Me_Help()
    }
}
