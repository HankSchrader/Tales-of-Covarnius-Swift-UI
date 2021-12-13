//
//  Part_4_Let_Me_Help.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_4_Let_Me_Help: View {
    static let PageName = "Part_4_Let_Me_Help"
    @State var showMenu = false
    var body: some View {
        let text =
        "The two of you (with Luna) hurry to tell King Zanarq about your genius plan to stop the Sinisterians once and for all! Upon arriving, you are escorted to a large room. The area is nearly empty, except for a table and a dozen comfy looking chairs.\n\nKing Zanarq sits at the head of the table, his shiny crown perched atop his head. More Covarnians sit in the seats around the alien king, weary looks on their faces. This must be the war room.\n\n“This better be important,” King Zanarq growls. “And I see you didn’t send the earthlings back either,” he adds, noticing you and Luna.\n\nChrono clears his throat and tries to sound confident as he explains your plan."

        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_5_Let_Me_Help.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Let_Me_Help_Previews: PreviewProvider {
    static var previews: some View {
        Part_4_Let_Me_Help()
    }
}
