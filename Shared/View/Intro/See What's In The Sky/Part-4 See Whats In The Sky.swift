//
//  Part-4 See Whats In The SKy.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_4_See_Whats_In_The_Sky: View {
    @State var showMenu = false
    static let PageName = "Part_4_See_What_In_The_Sky"
    var body: some View {

        let text =
        "“Bonjour,” the alien says, waving his long slender arm. You look at him slack jawed with confusion. The alien speaks French?\n\n“Je m’appelle Chrono,” he continues with a bow. His eyes never leave your face.\n\nYou shake your head. “Do you speak English, by chance?” you ask.\n\nThe creature taps a device on his ear and says, “Sorry for the confusion. I just assumed…”"
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Part_2_See_Whats_In_The_Sky.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Chrono and Ship", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
      
    }
    
}

struct Part_4_Part_2_See_Whats_In_The_Sky: View {
    @State var showMenu = false
    static let PageName = "Part_4_Part_2_See_What_In_The_Sky"
    var body: some View {

        let text =
        "You can’t imagine why he assumed you spoke French, but it doesn’t matter anyway.\n\n“What do you want?” you ask him, hoping the answer isn't world domination.\n\n“I need you to come with me right away!” the alien declares. You hesitate for a moment, and reply..."
        let decision2 = "\"Sure! I'll Help\""
        let decision1 = "\"No Way! You'll dissect my brains!\""
        let firstChoicePageName = Part_1_Dissect_My_Brains.PageName
        let secondChoicePageName = Part_1_Fork_In_The_Road.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Chrono and Ship",  decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
      
    }
    
}

