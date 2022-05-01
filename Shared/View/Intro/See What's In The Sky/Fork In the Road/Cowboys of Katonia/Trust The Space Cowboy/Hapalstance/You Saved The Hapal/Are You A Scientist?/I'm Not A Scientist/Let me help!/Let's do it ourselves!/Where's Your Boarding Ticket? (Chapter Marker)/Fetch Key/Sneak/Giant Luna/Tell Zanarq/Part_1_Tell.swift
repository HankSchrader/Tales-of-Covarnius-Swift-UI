//
//  Part_1_Tell.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Tell: View {
    static let PageName = "Part_1_Tell"
    @State var showMenu = false
    var body: some View {
       let text =
        "The two of you race towards King Zanarq's palace to announce the good news.\n\n“Chrono? You are responsible for this?” the king asks with astonishment.\n\n“Me and the earthling!” Chrono replies proudly, slinging his arm around your neck."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Tell.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Big Luna", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Tell_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Tell()
    }
}
