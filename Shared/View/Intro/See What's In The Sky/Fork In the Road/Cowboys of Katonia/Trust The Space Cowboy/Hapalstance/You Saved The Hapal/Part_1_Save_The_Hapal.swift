//
//  Part_1_Save_The_Hapal.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Save_The_Hapal: View {
    static let PageName = "Part_1_Save_The_Hapal"
    @State var showMenu = false
    var body: some View {
        let text =
        "You take off in the direction that Kayo went. Luna follows close behind with her tongue hanging out the side.\n\n“Where are you going?” Chrono asks. “The ship is fixed, we can get out of here now!”\n\nYou shake your head. “Kayo helped us when we needed it. Now we need to help him… and whatever a baby hapal is.”\n\nAs you round the corner of the ranch house, you see Kayo and Kina crouching near the small opening of a cave.\n\n“What’s the matter?” you ask, approaching the couple.\n\nKayo and Kina stand up and you can see the worried looks on their faces.\n\n“The baby hapal wandered into this cave and now he’s too afraid to come out,” Kayo explains. “The problem is, we’re all too big to get through this opening to nab 'em.”"

        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Save_The_Hapal.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Save_The_Hapal_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Save_The_Hapal()
    }
}
