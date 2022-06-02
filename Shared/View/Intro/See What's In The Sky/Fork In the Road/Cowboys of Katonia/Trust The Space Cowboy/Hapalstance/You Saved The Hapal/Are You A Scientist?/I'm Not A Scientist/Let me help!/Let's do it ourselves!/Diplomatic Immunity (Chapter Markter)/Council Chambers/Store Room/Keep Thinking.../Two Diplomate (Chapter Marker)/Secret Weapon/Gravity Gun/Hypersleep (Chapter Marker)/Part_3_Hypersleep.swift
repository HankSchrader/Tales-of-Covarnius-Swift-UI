//
//  Part_3_Hypersleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Hypersleep: View {
    static let PageName = "Part_3_Hypersleep"
    @State var showMenu = false
    var body: some View {
        let text =
        "Quick, you have to think of something! Then you remember the key you took from the Sinistarian guard. Could that be the key for the override? It’s the only chance you have, you’ve got to try.\n\nYou pull the key out of your pocket and insert it into the console.\n\nIt works!\n\nThe countdown stops. You only have a moment to revel in your victory before you hear the sound of tons of groggy Sinisterians stirring. With no time to lose, you hightail it out of the Hypersleep Chamber.\n\nAs you rush back up the hallway, you see Chief Korgle and the quartermaster from earlier. They don’t look happy. You clutch your stomach and act innocent. “What’s going on?” you ask. (As if you don't know!)"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Hypersleep.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Hyper Sleep" : "Hyper Sleep iPhone 2", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Hypersleep_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Hypersleep()
    }
}
