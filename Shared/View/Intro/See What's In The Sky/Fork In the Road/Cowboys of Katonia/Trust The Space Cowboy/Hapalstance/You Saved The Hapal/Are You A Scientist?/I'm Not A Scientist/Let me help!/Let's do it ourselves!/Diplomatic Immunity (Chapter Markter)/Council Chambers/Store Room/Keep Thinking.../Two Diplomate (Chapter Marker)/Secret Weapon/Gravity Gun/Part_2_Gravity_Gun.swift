//
//  Part_2_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Gravity_Gun: View {
    static let PageName = "Part_2_Gravity_Gun"
    @State var showMenu = false
    var body: some View {
        let text =
        "You pass several doors on your way to wherever Chief Korgle is leading you. You’re surprised at the lack of other Sinisterians present. The halls are nearly empty. If they are planning a massive invasion of Covarnius, who’s doing the invading?\n\nYour question is answered the very next moment, when you pass a door labeled Hypersleep Chamber. You manage to see row after row of pods filled with Sinisterians.\n\nSo that’s why the place seems empty. They are all in hypersleep until arrival. You glance at Chrono but he doesn’t seem to have noticed.\n\nYou pass several more doors. One appears to be a restroom and another is labeled Control Room. That’s the room Chrono said you needed to find!\n\nYou point it out silently to Chrono and he nods knowingly. That's the room where he can input the black hole coordinates!"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Gravity_Gun.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

