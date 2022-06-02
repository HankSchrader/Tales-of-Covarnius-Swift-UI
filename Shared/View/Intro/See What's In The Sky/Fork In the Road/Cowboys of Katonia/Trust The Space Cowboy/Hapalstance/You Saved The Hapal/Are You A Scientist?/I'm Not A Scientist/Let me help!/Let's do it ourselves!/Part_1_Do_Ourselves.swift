//
//  Part_1_Do_Ourselves.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Do_Ourselves: View {
    static let PageName = "Part_1_Do_Ourselves"
     
    @State var showMenu = false
    var body: some View {
        let text =
        "“But how?” Chrono asks. “King Zanarq turned the plan down and that was the only idea we had.”\n\n“We don’t need King Zanarq,” you say confidently. “We’ll board the Sinisterian ship ourselves. We can do it!”\n\n“Unfortunately, we can’t.” Chrono argues. “We’d have to be Covarnian Ambassadors in order to get onto the Sinisterian ship. And I don’t know about you, but I’m not an ambassador.\"\n\nYou think for a minute, mulling over the new information. “What if we just sneak onto the Sinisterian ship?” you suggest."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Do_Ourselves.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Ambassador or Sneak iPad" : "Decision_2_iPhone_",  decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Do_Ourselves_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Do_Ourselves()
    }
}
