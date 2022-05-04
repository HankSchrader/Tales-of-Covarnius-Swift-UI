//
//  Part_1_Keep_Thinking.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Keep_Thinking: View {
    static let PageName = "Part_1_Keep_Thinking"
    @State var showMenu = false
    var body: some View {
        let text =
        "“I have a feeling I’m forgetting something.” you say. \n\n“Hmm,” Chrono ponders. “We have the sashes, key cards cruiser...” He stops to think for another moment. “Now all that’s left is to board the ship, find the control room and change the coordinates.”\n\n Luna lets out a bark and then licks your face. You’re not sure what that means in dog language but you think she’s trying to reassure you. If only you spoke dog. Then it hits you, you don’t speak Sinisterian!\n\n“Wait.” you exclaim, how will I be able to interact with the Sinisterians?”\n\n“Oh, I’m glad you reminded me,” Chrono says pulling a device out of his pocket. Use this translator. It will let you hear what the Sinisterians are saying in your language and transmit what you say into Sinisterian.” He hands you the device. It's about the size of a hearing aid. “Good thing you remembered that,” Chrono applauds you. “That could have been a disaster.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Keep_Thinking.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Brig", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Keep_Thinking_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Keep_Thinking()
    }
}
