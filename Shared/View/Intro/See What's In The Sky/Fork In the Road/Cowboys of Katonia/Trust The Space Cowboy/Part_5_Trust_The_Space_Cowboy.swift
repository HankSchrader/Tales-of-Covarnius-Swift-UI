//
//  Part_5_Trust_The_Space_Cowboy.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_5_Trust_The_Space_Cowboy: View {
    static let PageName = "Part_5_Trust_The_Space_Cowboy"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Now y’all go on and relax,” Kayo says, standing up from the table. “I’ll grab Kebo and we’ll get your ship fixed in no time!”\n\nYou see a large, overstuffed couch positioned next to a roaring fire. Having a moment to relax doesn’t sound too bad. After all that’s happened, you figure you’re entitled to a break.\n\nBut on the other hand, what if these space cowboys turn out to be thieves. They’ll fix the ship alright...then steal it!\n\nThe couch and the fire do look inviting...but the ship is your only hope to get off the planet."
        
        let decision1 = "Kayo Seems Suspicious..."
        let decision2 = "Take Offer To Relax"
        let firstChoicePageName = Part_1_Who_Trusts_Alien_Cowboys.PageName
        let secondChoicePageName = Part_1_Hapalstance.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_5_Trust_The_Space_Cowboy_Previews: PreviewProvider {
    static var previews: some View {
        Part_5_Trust_The_Space_Cowboy()
    }
}
