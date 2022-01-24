//
//  Part_2_Fetch_Key.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Fetch_Key: View {
    static let PageName = "Part_2_Fetch_Key"
    @State var showMenu = false
    var body: some View {
        let text =
        "Exiting the ship, you look at the ensuing chaos on Covarnius. Sinisterians run amok while the Covarnians have went into hiding.\n\nThere must be something you can do to stop the Sinisterians. If only you knew their weakness. You scratch Luna’s ears absentmindedly as you think. And then it hits you! You already know the Sinisterians’ weakness: Luna!\n\nThe Sinisterians are horribly allergic to dogs. But how can you stop an entire horde of Sinisterians with just one dog?\n\n“What do we do now?” Chrono asks, surveying the chaos.\n\n“I believe Luna is the key to solving this problem,” you respond. “Now we just have to work out the details.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Fetch_Key.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Sinisterian Ships", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
        
    }
}

struct Part_2_Fetch_Key_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Fetch_Key()
    }
}
