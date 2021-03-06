//
//  Part_3_Let_Me_Help.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Let_Me_Help: View {
    static let PageName = "Part_3_Let_Me_Help"
    @State var showMenu = false
    var body: some View {
        let text =
        "Chrono stops in his tracks. “That could work,” he says...then he shakes his head, dismissing the idea. “But it’s way too dangerous.” After a pause, he tilts his head and says, “It is a good idea though.”“I really think it could work,” you say. \n\n“And just think, if you’re the one who pitches the idea that saves your planet, you’ll be a hero!”The persuasion appears to have worked. A smile spreads across the alien’s face. “Well I suppose we could tell King Zanarq and see what he thinks.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Let_Me_Help.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Sad Chrono", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Let_Me_Help_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Let_Me_Help()
    }
}
