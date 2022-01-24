//
//  Part_2_Landing.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Landing: View {
    static let PageName = "Part_2_Landing"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Who are you calling French?” you ask, looking from Chrono to the crown clad extraterrestrial.\n\n“Why, you of course,” the regal alien states with certainty. “Welcome! I am the King of Covarnius. You may call me King Zanarq.”\n\nAnxiety blooms in the pit of your stomach. If these aliens think you’re French, then clearly they have the wrong person...but if you tell them the truth now, who knows how they’ll react?\n\nYou’ve seen the movies, you know this makes you expendable."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_1_Landing.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Chrono and Ship", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_1_Landing: View {
    static let PageName = "Part_2_1_Landing"
    @State var showMenu = false
    var body: some View {
        let text =
        "On the other hand, you’re not some super genius scientist. How are you going to help?\n\nSeveral tall Covarnians in official garb usher you out of the ship. “My guards will now take you to your new lab and brief you on your mission.” King Zanarq informs you. You swallow hard and tell him:"
        
        let decision1 = "I'm not a scientist."
        let decision2 = "I'm a scientist after all!"
        let firstChoicePageName = Part_1_Not_Scientist.PageName
        let secondChoicePageName = Part_1_Fake_Til_You_Make.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Chrono and Ship", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}


struct Part_2_Landing_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Landing()
    }
}
