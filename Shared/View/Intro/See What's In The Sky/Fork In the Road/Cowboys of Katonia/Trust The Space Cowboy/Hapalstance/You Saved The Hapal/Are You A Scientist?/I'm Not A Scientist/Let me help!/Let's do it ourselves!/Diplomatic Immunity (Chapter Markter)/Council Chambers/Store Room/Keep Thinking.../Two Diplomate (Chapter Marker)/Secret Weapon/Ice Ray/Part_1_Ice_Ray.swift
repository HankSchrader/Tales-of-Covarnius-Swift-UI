//
//  Part_1_Ice_Ray.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Ice_Ray: View {
    static let PageName = "Part_1_Ice_Ray"
    @State var showMenu = false
    var body: some View {
        let text =
        "You go into great detail about the ice ray. Chief Korgle is all ears, hearing about the secret technology the Covarnian labs have created. You try to sound as convincing as possible. Chief Korgle listens intently as you tell your tale.\n\nYou look at the chief, hoping he’s ready to abort the mission. Instead, he begins laughing. He laughs and he laughs until tears are streaming down his leathery face.\n\n“That’s a good one,” he says after finally catching his breath. He motions to the guard who had been standing motionless to the side. “Get them out of here,” he instructs, wiping the tears from his face.\n\nThe guard leads you back to your ship where Luna has been waiting patiently."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Peace.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Ice_Ray_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Ice_Ray()
    }
}
