//
//  Part_2_Stank_Meat.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_2_Stank_Meat: View {
    static let PageName = "Part_2_Stank_Meat"
    @State var showMenu = false
    var body: some View {
        let text =
        "With that obstacle overcome, you sneak upstairs in search of the ambassador uniforms. The first room you enter on the second story appears to be a bedroom. A closet on the far wall seems the obvious place to look so you make your way across the bedroom. When you open the door, a smile spreads across your face. Inside is several Covarnian ambassador uniforms.\n\nYou grab the uniforms and turn around to see Chrono standing next to the night stand with a key card in hand...uh...tentacle.\n\n“Looks like we have everything we need!” you exclaim happily. “Phase one complete.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Stank_Meat.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Stank_Meat_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Stank_Meat()
    }
}