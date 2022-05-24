//
//  Part_2_Sneak.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Sneak: View {
    static let PageName = "Part_2_Sneak"
    @State var showMenu = false
     
    var body: some View {
        let text =
        "“So you’re saying it doesn’t work?” Desperation grows in your voice. You look back out the window and notice they’re only five houses away now!\n\n“Nope, it doesn’t work,” Chrono says, pushing the start button to demonstrate its worthlessness. “I’ve checked it’s antimatter modulation unit, the vorpral capacitor unit, even the space-time proximity relay. Absolutely nothing is wr—”\n\n“Did you check the power plug?” you say with a smile, holding the dangling cord in your hand."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Sneak.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Growth Ray" : "Growth Ray iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
    }
}

struct Part_2_Sneak_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Sneak()
    }
}
