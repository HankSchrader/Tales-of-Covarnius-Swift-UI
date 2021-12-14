//
//  Part_3_Keep_Thinking.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Keep_Thinking: View {
    static let PageName = "Part_3_Keep_Thinking"
    @State var showMenu = false
    var body: some View {
        let text =
        "“I'll take you to Chief Korgle—the captain of the ship—but whatever that creature is,” the Sinisterian gestures at Luna, “it has to stay here.”\n\nYou look at Luna standing next to you. She’s your best friend in the whole world. (Or universe, for that matter.) You don’t want to leave her behind.\n\nLuna shakes vigorously, like she just stepped out of a rain shower. The Sinisterian instantly sneezes and green ooze leaks from his eyes and nose. He takes a step backwards, trying to compose himself.\n\nHe must be allergic to dogs, you realize. But you still don’t want to leave Luna in the Covarnian Cruiser, she might get scared. Couldn’t he just point you in Chief Korgle's direction?\n\nThe Sinisterian sneezes and tries to wipe the slimy ooze from his eyes. Remember, this is a sensitive mission!"
        
        
        let decision1 =  "Do as they ask."
        let decision2 = "I'm not leaving Luna behind."
        let firstChoicePageName = Part_1_Two_Diplomats.PageName
        let secondChoicePageName = Part_1_Luna_Stays.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
        
    }
}

struct Part_3_Keep_Thinking_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Keep_Thinking()
    }
}
