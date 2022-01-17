//
//  Part_3_House.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_3_House: View {
    static let PageName = "Part_3_House"
    @State var showMenu = false
    var body: some View {
        let text =
        "The uniforms wouldn’t be kept in the kitchen, you surmise. As you turn to leave the room, something stops you dead in your tracks.\n\nTwo creatures stand before you, baring their sharp fangs! The creatures are covered in a thick shaggy fur about the same color as Luna’s. These must be some sort of Covarnian dogs, you think as you stand frozen in place.\n\n“Good growlics,\" Chrono says.”\n\nThe growlics take a step closer. You need to think of a plan and you need to think of one fast. If you make the wrong move you could easily end up as dinner for these vicious looking animals."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_House.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_House_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_House()
    }
}
