//
//  Part_7_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_7_Gravity_Gun: View {
    static let PageName = "Part_7_Gravity_Gun"
    @State var showMenu = false
    var body: some View {
        let text =
        "You quickly excuse yourself and make your way into the hallway. Now to come up with a distraction. Something that will make the chief leave the room so that Chrono can get to the control panel.\n\nYou look around. There aren't any fire alarms to pull! What else would create enough chaos to give Chrono enough time?\n\nYou look at the bathroom door. What if you could clog up all the toilets in the bathroom so they would overflow? That would create a distraction! It seems like a good plan. Not too risky, easy to pull off, and believable because of the food poisoning."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_8_Gravity_Gun.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_7_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_7_Gravity_Gun()
    }
}
