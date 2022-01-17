//
//  Part_2_Peace.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Peace: View {
    static let PageName = "Part_2_Peace"
    @State var showMenu = false
    var body: some View {
       let text =
        "As the three of you sit in the Covarnian cruiser, you watch as the Sinisterian ship races farther and farther ahead. Their ship is much faster than yours. They will land on Covarnius shortly and the invasion will begin. If only you had been able to get to that control room…\n\nYour original scheme might not have worked out, but you’re not giving up! “Set the course for Covarnius,” you tell Chrono. We can still defeat the Sinisterians. We just have to come up with a new plan.\"\n\nYou travel back to Covarnius as quickly as you can. Upon arrival, you see that the Sinisterians have already landed."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Fetch_Key.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Covarnius",  decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Peace_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Peace()
    }
}
