//
//  Part_3_Giant_Luna.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Giant_Luna: View {
    static let PageName = "Part_3_Giant_Luna"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Retreat!” The Sinisterian chief is barely able to make the words out. Even before announcing the command, his cadre had already begun evacuating. Luna trots across the city, allowing her fur to fall freely amongst the Sinisterians. Green slime pours out of every invader that is unlucky enough to come across the giant dog.\n\nBefore the Covarnians know it, the entire race of Sinisterians are on the run. They scatter, running back into the mothership. After a few moments, they are halfway across the galaxy. Their plan has been pulverized by an enormous canine!"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Sneak.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Giant_Luna_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Giant_Luna()
    }
}
