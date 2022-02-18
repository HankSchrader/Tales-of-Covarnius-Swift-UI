//
//  Part_2_Store_Room.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Store_Room: View {
    static let PageName = "Part_2_Store_Room"
    @State var showMenu = false
    var body: some View {
        let text =
        "You crouch down and look under the doorway. There are no shadows to be seen. The hallway has fallen silent. “it’s clear to go now,” you inform Chrono.\n\nYou step out of the room as quietly as possible. Luna trots along beside you with her tongue hanging out, completely oblivious to the planet saving mission you’re on.\n\nThe stairs squeak as you ascend to the upper level. There's no way you’re getting out without being spotted by guards. Your heart pounds faster and faster as you make your way down the hallway and out into the stinky dumpster air.\n\nYou’ve never been so happy to smell such an atrocious stench! You look over at Chrono and see that he is smiling too. “Phase one complete!"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Store_Room.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "box", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Store_Room_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Store_Room()
    }
}
