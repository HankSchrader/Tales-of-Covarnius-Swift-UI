//
//  Part_1_Too_Risky.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Too_Risky: View {
    static let PageName = "Part_1_Too_Risky"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "No point in diverging from the plan, you think. You’ll always wonder where that key went to though…\n\nChrono, on the other hand, seemed to read your mind. With a mischievous grin, his hand gently wraps around the key and places it into your pocket. You look at him as if he’s gone crazy, but hey, it might come in handy.\n\n As the three of you round a corner in the hall, you come face to face with another Sinisterian. He looks a lot like the one leading you down the hall except dressed in a fancier uniform. Chief Korgle, you think."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Two_Diplomats.PageName
        let storyView: StoryPayload = StoryPayload(text: text,image: isIPad ? "Key iPad" : "Key", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Too_Risky_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Too_Risky()
    }
}
