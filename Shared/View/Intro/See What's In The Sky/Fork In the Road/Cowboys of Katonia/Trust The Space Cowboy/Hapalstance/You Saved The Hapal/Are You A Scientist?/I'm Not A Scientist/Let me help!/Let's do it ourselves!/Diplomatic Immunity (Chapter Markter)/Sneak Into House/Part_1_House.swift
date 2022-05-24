//
//  Part_1_House.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_House: View {
    static let PageName = "Part_1_House"
     
    @State var showMenu = false
    var body: some View {
        let text =
        "Chrono nods in agreement. “Ok, then let’s get going.”\n\nYou follow Chrono down a street lined with houses. It reminds you of your own neighborhood back on Earth. “That’s where I live,” Chrono says, pointing to one of the houses. “And this one is my neighbor, Zulak.”\n\n“Ok, let’s get those uniforms,” you say. You cross the strange yellow lawn and Chrono follows behind.\n\nApproaching the door, you wonder whether you made the right decision. Perhaps you should have taken your chances with the guards...\n\nIt’s not too late to get the uniforms from the council chamber. But who knows if that is the right decision either."
        
        let decision1 =  "This is getting shady. Turn back!"
        let decision2 = "Break in. The mission is too important!"
        let firstChoicePageName = Part_1_Council.PageName
        let secondChoicePageName = Part_2_House.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Outside Home" : "Outside Home iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_House_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_House()
    }
}
