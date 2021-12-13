//
//  Part_1_Let_Me_Help.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Let_Me_Help: View {
    static let PageName = "Part_1_Let_Me_Help"
    @State var showMenu = false
    var body: some View {
        let text =
        " “What could we possibly do to help?” Chrono looks at the ground sadly and shakes his head.\n\n“I’m just a screw up,\" he continues, \"I crashed my first ship and now I’m not allowed to pilot one manually anymore. I can’t even get my latest invention, the Hyper Growth Ray, to work! And to top it all off, I brought back the wrong earthling! Now Covarnius will fall to the Sinisterians and it will be all my fault.”\n\nYou have to admit, the situation looks grim, but you don’t tell Chrono that. There has to be some sort of solution that could help the Covarnians. “Don’t you have an army? Can’t you just fight the Sinisterians?”\n\n\"Covarnians are not fighters, we’re builders,\" Chrono says while kicking a strange looking object laying on the ground. It looks like a pinecone except it’s orange and fuzzy. “Once the Sinisterians land, it’s all over. We're done for.”\n\n“That’s it!” you say excitedly, snapping your fingers. “Then we just won’t let them land.” A new idea takes root in your mind. “What if we could stop the Sinisterians before they ever even get to Covarnius?”"
        
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Let_Me_Help.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)

    }
}

struct Part_1_Let_Me_Help_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Let_Me_Help()
    }
}
