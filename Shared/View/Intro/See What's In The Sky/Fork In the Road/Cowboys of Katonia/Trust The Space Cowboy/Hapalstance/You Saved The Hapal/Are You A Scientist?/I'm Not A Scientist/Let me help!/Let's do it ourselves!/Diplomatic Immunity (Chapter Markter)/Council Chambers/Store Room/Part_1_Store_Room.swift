//
//  Part_1_Store_Room.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Store_Room: View {
    static let PageName = "Part_1_Store_Room"
    @State var showMenu = false
    var body: some View {
        let text =
        "You make it to the store room door without ever seeing a guard. This is easier than you thought it would be!\n\nYou enter the small room. There are racks and racks of the fancy sashes with insignias embroidered on them.\n\n“Let's hurry,” you tell Chrono. “I don’t want to be here any longer than we have to be.” You grab two sashes off of their hangers and shove down into your backpack. Meanwhile, Chrono has been rummaging through one of the boxes.\n\n“Found it!” Chrono says holding up a triangular shaped key card.\n\n“Great,” you answer as you finish zipping up your bag. “Phase one is almost complete.”\n\nYou head to the door and are about to open it when you hear footsteps on the other side. It’s probably a good idea to make sure the coast is clear before exiting."
        
        let decision1 =  "Check underneath the door."
        let decision2 = "Look out the window."
        let firstChoicePageName = Part_2_Store_Room.PageName
        let secondChoicePageName = Caught_By_Covarnian.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Store_Room_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Store_Room()
    }
}
