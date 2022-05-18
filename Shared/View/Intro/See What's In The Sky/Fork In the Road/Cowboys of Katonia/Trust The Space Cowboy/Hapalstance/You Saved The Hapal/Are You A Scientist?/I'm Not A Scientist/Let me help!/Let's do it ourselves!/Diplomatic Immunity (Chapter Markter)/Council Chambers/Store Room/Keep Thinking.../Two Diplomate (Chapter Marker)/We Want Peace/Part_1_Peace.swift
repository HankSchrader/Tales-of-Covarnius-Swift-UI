//
//  Part_1_Peace.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Peace: View {
    static let PageName = "Part_1_Peace"
    @State var showMenu = false
    let isIpad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "A peace agreement?” Chief Korgle questions gruffly. “We don’t want peace. In fact we want quite the opposite.”\n\nPerhaps a more forceful approach would have been better.\n\nKorgle continues, “We are going to invade your planet and there’s nothing you can say to change my mind.”\n\nThe chief motions to the guard that escorted you, “Take these ambassadors back to their ship. I do not wish to speak with them further.”\n\n“This is terrible,” you whisper to Chrono. “The plan's falling apart.”\n\nChrono’s head hangs in defeat.\n\n As you jump back into your ship, Luna gives you a slobbery lick. “I’m glad to see you too, girl,” you tell her while patting her head. "
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Peace.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIpad ? "Chief Korgle" : "Chief Korgle iPhone",  decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Peace_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Peace()
    }
}
