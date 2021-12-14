//
//  Part_1_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Gravity_Gun: View {
    static let PageName = "Part_5_Gravity_Gun"
    @State var showMenu = false
    var body: some View {
        let text =
        "“We have developed an anti-gravity gun,” you inform Chief Korgle. “Anything caught in its beam will be instantly smushed.” You try to sound confident as you describe the secret weapon.\n\nIt's working! The chief appears apprehensive standing in the dimmed hallway, pondering over your words.\n\nYou continue, “If you continue your attack, Covarnius will have no choice but to use this weapon against you.”\n\n“Why don’t we take a moment to discuss this weapon of yours,” Chief Korgle says. He turns around and begins to walk down the long corridor. You and Chrono follow behind."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Gravity_Gun.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Gravity_Gun()
    }
}
