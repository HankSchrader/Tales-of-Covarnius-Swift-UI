//
//  Part_2_Greatest_Scientist.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/11/21.
//

import SwiftUI

struct Part_2_Greatest_Scientist: View {
    @State var showMenu = false
    static let PageName = "Part_2_Greatest_Scientist"
    
    var body: some View {
        let text = "But if we’re both sleeping, who is going to pilot this ship?” you ask.\n\nChrono looks down dejectedly. “The ship has been pre-programmed to take us back to Covarnius. I’m not allowed to pilot the ships by myself anymore.”\n\n Manual piloting must be a privilege where he is from, you think to yourself.\n\n “Why not?” you ask Chrono. “Did you crash one or something?\n\n Just how superior are these aliens anyhow? After all, they’re relying on you to save their planet."
            
            let decision1 = Constants.ContinuePhrase
            let firstChoicePageName = Part_3_Greatest_Scientist.PageName
            let storyView: StoryPayload = StoryPayload(text: text, image: "Asteroid", decision1: decision1, firstChoicePageName: firstChoicePageName)
            DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Greatest_Scientist_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Greatest_Scientist()
    }
}
