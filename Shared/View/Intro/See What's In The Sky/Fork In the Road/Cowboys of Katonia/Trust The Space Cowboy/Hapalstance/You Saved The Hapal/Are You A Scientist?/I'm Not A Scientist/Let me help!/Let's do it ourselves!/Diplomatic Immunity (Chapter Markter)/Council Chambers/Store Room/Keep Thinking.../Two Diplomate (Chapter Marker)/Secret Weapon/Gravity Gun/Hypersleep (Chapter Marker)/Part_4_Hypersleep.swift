//
//  Part_4_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Hypersleep: View {
    static let PageName = "Part_4_Hypersleep"
    @State var showMenu = false
    var body: some View {
        let text =
        "“The Hypersleep Chamber is malfunctioning!” Chief Korgle roars. He pushes past you in a hurry and continues down the hall.\n\nIn the next moment, you see Chrono appear at the door. He gives you a thumbs up and then heads into the next room: the Control Room!\n\nYou hope that your distraction will be enough time for Chrono to complete the mission. Rushing to the door, you see that Chrono is already hard at work, typing in long strings of what appears as gibberish to you.\n\nA bead of sweat rolls down Chrono’s face. You can tell he’s nervous, and he’s not the only one. You look back out into the hallway, expecting to see the chief any moment. "
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_5_Hypersleep.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Hyper Sleep" : "Hyper Sleep iPhone 2", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Hypersleep()
    }
}
