//
//  Part_3_Greatest_Scientist.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/11/21.
//

import SwiftUI

struct Part_3_Greatest_Scientist: View {
    @State var showMenu = false
    static let PageName = "Part_3_Greatest_Scientist"
    var body: some View {
        let text =
            "\"There may have been a slight...incident,” Chrono says shifting in his seat, eyes cast downward. Then his mood shifts, he snaps his head up and looks at you.\n\n“But once I get Earth’s greatest scientist back to Covarnius, they’ll all see I’m smarter than they think. Now if you’re ready, I’m going to engage hypersleep.”\n\nEarth’s greatest scientist? I sure hope he’s not talking about me, you think."
            
            let decision1 = Constants.ContinuePhrase
            let firstChoicePageName = Part_4_Greatest_Scientist.PageName
            let storyView: StoryPayload = StoryPayload(text: text, image: "Chrono and Ship", decision1: decision1, firstChoicePageName: firstChoicePageName)
            DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Greatest_Scientist_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Greatest_Scientist()
    }
}
