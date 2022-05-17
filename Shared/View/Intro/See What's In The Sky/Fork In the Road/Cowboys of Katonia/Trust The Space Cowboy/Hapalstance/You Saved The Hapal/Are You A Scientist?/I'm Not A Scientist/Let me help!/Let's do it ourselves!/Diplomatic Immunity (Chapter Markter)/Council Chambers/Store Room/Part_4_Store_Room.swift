//
//  Part_4_Store_Room.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Store_Room: View {
    static let PageName = "Part_4_Store_Room"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "You throw the sashes on while the ship heads for the Sinisterians. You look at your reflection in the glass and hope that you can pass for a Covarnian.\n\n“You look just like a Covarnian ambassador,” Chrono says, as if reading your mind.\n\nYou hope he’s right. But still, something keeps nagging at the back of your mind. Almost like there is something important that you’re not thinking of. But what could it be? You have your Covarnian robe, ID, key, your sleek Covarnian cruiser. You can’t think of anything else."

        
        let decision1 = "Keep Thinking"
        let decision2 = "It's not important"
        let firstChoicePageName = Part_1_Keep_Thinking.PageName
        let secondChoicePageName = Part_1_Not_Important.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Covarnius iPad" : "Covarnius", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)

    }
}

struct Part_4_Store_Room_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Store_Room()
    }
}
