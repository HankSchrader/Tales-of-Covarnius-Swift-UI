//
//  Part_6_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_6_Hypersleep: View {
    static let PageName = "Part_6_Hypersleep"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Are you almost done?” you ask, “We need to get out of here!” Chrono is hastily inputting coordinates. He either doesn’t hear you or is ignoring you.\n\nIn the next moment, Chrono hits a button and you hear a beep sound. Hopefully that’s a good thing. Chrono turns around with a huge smile on his face. “Let’s get out of here,” he says. The two of you sprint out of the control room without a moment to spare.\n\nJust as you take your seats in the chief's office, he storms back into the room.\n\n"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_7_Hypersleep.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Control Room", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_6_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_6_Hypersleep()
    }
}
