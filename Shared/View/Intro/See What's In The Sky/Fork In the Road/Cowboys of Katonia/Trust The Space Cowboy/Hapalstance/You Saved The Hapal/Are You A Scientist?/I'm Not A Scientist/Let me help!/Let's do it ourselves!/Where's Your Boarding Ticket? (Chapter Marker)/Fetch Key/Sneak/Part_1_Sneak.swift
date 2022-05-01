//
//  Part_1_Sneak.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Sneak: View {
    // New Chapter: Raid on Covarnius
    static let PageName = "Part_1_Sneak"
    @State var showMenu = false
    var body: some View {
        let text =
        "You dart behind bushes and trees, and promptly arrive at 99 Larblok Lane: Chrono’s house. Chrono sprints up the staircase, you and Luna follow closely behind. Peering out the window of his bedroom, you notice that Sinisterians are going door to door, rounding up all of the Covarnians.\n\n“They have Mr. Blarknark in chains!” Chrono cries, pointing to his neighbor about six doors down.\n\n“That means we don’t have much time to fix the machine. I'm guessing they’ll be here in about twenty minutes,” you say.\n\nYou turn to the Hyper Growth Ray and realize that it might be more difficult to fix than you thought."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Sneak.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Invasion", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
    }
}

struct Part_1_Sneak_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Sneak()
    }
}

struct Part_1_2_Sneak: View {
    static let PageName = "Part_1_2_Sneak"
    @State var showMenu = false
    var body: some View {
        let text =
        ""
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Sneak.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Growth Ray", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
    }
}
/*
 \n\nIt looks like a telescope, but with a large dial on the side. Covarnian symbols are printed at different intervals on the dial. After asking Chrono, you discover it reads: Large, Very Large, and Humongous!
 */
