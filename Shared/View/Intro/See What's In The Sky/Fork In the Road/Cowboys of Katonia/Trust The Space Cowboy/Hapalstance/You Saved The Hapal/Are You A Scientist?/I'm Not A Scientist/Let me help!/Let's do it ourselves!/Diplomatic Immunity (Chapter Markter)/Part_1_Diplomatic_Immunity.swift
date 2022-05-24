//
//  Part_1_Diplomatic_Immunity.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Diplomatic_Immunity: View {
    static let PageName = "Part_1_Diplomatic_Immunity"
    @State var showMenu = false
     
    var body: some View {
        let text =
        "“Ok, then. That settles that,” Chrono says. “We have a plan, now to put it into action. Chrono stares back at you, awaiting directions.\n\nSo what does come next? Scratching Luna’s ears always helps you think.\n\n“Well, we’ll need some of those fancy sashes.” You count off on your fingers as you go. “And some sort of credentials. You know, just in case the Sinisterians question us."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_2_Diplomatic_Immunity.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Running Down Hall" : "Running Down Hall iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_2_Diplomatic_Immunity: View {
    static let PageName = "Part_1_2_Diplomatic_Immunity"
    @State var showMenu = false
     

    var body: some View {
        let text =
        "”Chrono still looks worried but nods with agreement. “Is there anything else you can think of?” he asks.\n\n“Just one thing,” you tell him with a slight smile. “We’ll need one of those sleek Covarnian ships.”\n\n“That should all be doable.” Chrono says with determination. “There are a few different ways we could go about procuring these items.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Diplomatic_Immunity.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Running Down Hall" : "Running Down Hall iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}
