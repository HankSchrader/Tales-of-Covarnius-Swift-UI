//
//  Part_1_Crash_Wall.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Crash_Wall: View {
    static let PageName = "Part_1_Crash_Wall"
     
    @State var showMenu = false
    var body: some View {
        let text =
        "“Chrono,” you say, “that’s just crazy enough to work!”\n\nThose engines are powerful enough for interstellar space. Surely they can rip through the jail’s wall.\n\n“Would you like to do the honors?” Chrono asks. He hands you the autoparker. There is a big green button on the bottom of the device, you push the button.\n\n“Get away from the wall!” Chrono cries. The three of you huddle towards the front of the cell, right next to the bars.\n\nIn an instant, you are met with a loud thunderous crash."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Crash_Wall.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Brig" : "Brig iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        
        
    }
}

struct Part_1_Crash_Wall_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Crash_Wall()
    }
}
