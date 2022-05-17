//
//  Part_1_Two_Diplomats.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Two_Diplomats: View {
    static let PageName = "Part_1_Two_Diplomats"
    @State var showMenu = false
    var body: some View {

        let text =
        "Smart move!\n\n“It’s ok, girl,” you soothe Luna and tell her to return to the spaceship. Luna jumps onto the seat of the Covarnian cruiser and stretches out with a yawn.\n\n“She’ll be safer here anyway,” you explain .\n\n“I think you’re right.”\n\nThe sneezy Sinisterian leads you to the quartermaster, and returns to his guard duty."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Two_Diplomats.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Sneezy Sinisterian", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
    }
}

struct Part_1_2_Two_Diplomats: View {
    static let PageName = "Part_1_2_Two_Diplomats"
    @State var showMenu = false
    var body: some View {

        let text =
        "So far so good, you think. The three of you follow the Sinisterian escorting you to the chief. Everything is going according to plan.\n\nYou wind through long hallways with dim lighting and try to remember the way back to the ship. You think it’s better to be prepared, just in case you have to make a hasty getaway."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Two_Diplomats.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Sneezy Sinisterian", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
    }
}

struct Part_1_Two_Diplomats_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Two_Diplomats()
    }
}
