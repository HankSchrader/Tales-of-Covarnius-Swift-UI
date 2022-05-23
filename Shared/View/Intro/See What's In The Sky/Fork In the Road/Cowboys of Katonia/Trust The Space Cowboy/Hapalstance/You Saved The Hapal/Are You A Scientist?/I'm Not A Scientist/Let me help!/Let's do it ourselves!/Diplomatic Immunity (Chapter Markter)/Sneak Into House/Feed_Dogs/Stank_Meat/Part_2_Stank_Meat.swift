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
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "With that obstacle overcome, you sneak upstairs in search of the ambassador sashes. The first room you enter on the second story appears to be a bedroom. A closet on the far wall seems the obvious place to look so you make your way across the bedroom. When you open the door, a smile spreads across your face. There are several sashes inside.\n\nYou grab the sashes and turn around. Chrono is standing next to the night stand with a key card in hand.\n\n“Looks like we have everything we need!” you exclaim. “Phase one complete.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Stank_Meat.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Running Down Hall" : "Running Down Hall iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Stank_Meat_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Stank_Meat()
    }
}
