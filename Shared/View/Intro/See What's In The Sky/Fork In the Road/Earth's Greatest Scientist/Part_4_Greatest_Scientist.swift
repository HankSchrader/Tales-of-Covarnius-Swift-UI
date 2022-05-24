//
//  Part_2_Greatest_Scientists.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Greatest_Scientist: View {
    @State var showMenu = false
    static let PageName = "Part_4_Greatest_Scientist"
     
    var body: some View {
        let text =
        "Chrono leads you to one of two sofas near the back of the spaceship. It looks like a couch that would be found in a psychologist’s office.\n\nYou lay down and instantly sink into the warm, cushiony lining. Luna leaps onto the couch next to you and snuggles up close.\n\n“These couches impart a sleeping agent into your skin upon contact,” Chrono explains. “That’s why you’re getting so tired. Do me a favor and count to ten.”\n\n“Sure,” you reply. “One...two…”"
    
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Landing.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Asteroid" : "Asteroid iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Greatest_Scientist_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Greatest_Scientist()
    }
}
