//
//  Part_1_Murkblur.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Murkblur: View {
    static let PageName = "Part_1_Murkblur"
    @State var showMenu = false
    var body: some View {
        let text =
        "Chrono thinks for a moment and shrugs his shoulders. “Well that makes sense. Here goes nothing!”\n\nHe points the Hyper Growth Ray at the Murkblur and fires. A wide, blue ray shoots out of the muzzle and hits the bug. In about two seconds, the two inch Murkblur becomes a two foot Murkblur.\n\nYou nod and give a thumbs up to Chrono. Luna, barks at the poor Murkblur, whose face quickly becomes one of terror. It quickly scurries out of the bedroom and down the hall."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Giant_Luna.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Ray Gun", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Murkblur_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Murkblur()
    }
}
