//
//  Part_4_Store_Room.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Store_Room: View {
    static let PageName = "Part_4_Store_Room"
    @State var showMenu = false
    var body: some View {
        let text =
        "You and Chrono throw the robes on over your clothes while the ship heads for the Sinisterians. You look at your reflection in the glass and hope that you can pass for a Covarnian.\n\n“You look just like a Covarnian ambassador,” Chrono says, as if reading your mind.\n\nYou hope he’s right. But still, something keeps nagging at the back of your mind. Almost like there is something important that you’re not thinking of. But what could it be? You have your Covarnian robe, ID, key, your sleek Covarnian cruiser. You can’t think of anything else."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_1_Boarding_Ticket()), decision1: "Keep thinking.", secondChoice: AnyView(Part_1_Diplomatic_Immunity()), decision2: "It's not important.")
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Council.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Store_Room_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Store_Room()
    }
}
