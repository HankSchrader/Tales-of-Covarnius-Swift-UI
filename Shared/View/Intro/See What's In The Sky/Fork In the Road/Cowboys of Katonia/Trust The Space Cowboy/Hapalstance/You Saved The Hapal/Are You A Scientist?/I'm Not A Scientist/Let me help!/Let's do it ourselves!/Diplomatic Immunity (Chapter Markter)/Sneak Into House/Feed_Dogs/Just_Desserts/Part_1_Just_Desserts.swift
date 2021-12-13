//
//  Part_1_Just_Desserts.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_1_Just_Desserts: View {
    static let PageName = "Part_1_Just_Desserts"
    @State var showMenu = false
    var body: some View {
        let text =
        "You grab the plate with the strange looking dessert and throw it to the growlics. They sniff at it with interest. “That’s it,” you urge them, “eat the food.” The canines lick the dessert but seem disinterested.\n\n Your plan isn’t going the way you wanted…time for a new plan!\n\n“Run!” you shout to Chrono. You hightail it out of the kitchen as fast as you can. The three of you make it past the growlics—while they are still distracted with the food—and out into the fresh air. You create a barrier between yourselves and the growlics as you slam the door shut behind you"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Just_Desserts.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Just_Desserts_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Just_Desserts()
    }
}
