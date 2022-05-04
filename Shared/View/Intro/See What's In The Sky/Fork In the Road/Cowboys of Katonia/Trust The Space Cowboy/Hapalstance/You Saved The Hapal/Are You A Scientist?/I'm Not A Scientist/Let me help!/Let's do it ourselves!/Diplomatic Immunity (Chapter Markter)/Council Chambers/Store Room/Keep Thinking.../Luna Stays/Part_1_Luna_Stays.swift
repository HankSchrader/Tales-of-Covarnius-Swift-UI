//
//  Part_1_Luna_Stays.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Luna_Stays: View {
    static let PageName = "Part_1_Luna_Stays"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Luna stays with us,” you tell the sneezy Sinisterian.\n\n“Are you defying a Sinisterian order?” he quits sneezing long enough to say. “When you’re on Sinisterian property you obey us, ambassador!”\n\nYou look over at Chrono. He looks terrified and you imagine he’s thinking the same thing as you. This isn’t going quite as planned.\n\n“I will give you one more chance before I toss you into the brig.”"

        let decision1 =  "This needs to go smoothly."
        let decision2 = "Luna stays with us!"
        let firstChoicePageName = Part_1_Two_Diplomats.PageName
        let secondChoicePageName = Part_2_Luna_Stays.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Sneezy Sinisterian", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Luna_Stays_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Luna_Stays()
    }
}
