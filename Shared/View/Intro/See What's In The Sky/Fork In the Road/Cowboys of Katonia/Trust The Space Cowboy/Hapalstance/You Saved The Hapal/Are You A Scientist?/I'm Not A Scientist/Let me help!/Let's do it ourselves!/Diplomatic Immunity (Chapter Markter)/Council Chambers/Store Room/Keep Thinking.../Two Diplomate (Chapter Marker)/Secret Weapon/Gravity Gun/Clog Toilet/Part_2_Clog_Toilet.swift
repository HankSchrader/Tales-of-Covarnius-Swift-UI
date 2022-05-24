//
//  Part_2_Clog_Toilet.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Clog_Toilet: View {
    static let PageName = "Part_2_Clog_Toilet"
    @State var showMenu = false
    var body: some View {
        let text =
        "While Chief Korgle and the quartermaster discuss what to do, you slide out the door unnoticed.\n\nYou hope the bathroom distraction will bide enough time for Chrono to make it to the control room. If it doesn’t though… thoughts of the chief finding Chrono in the control room fill your mind. Chief Korgle didn't seem like the sort of man or um… alien to be trifled with. A situation like that would surely end with the utmost disastrous of consequences."
        
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Clog_Toilet.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Toilet" : "Toilet iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Clog_Toilet_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Clog_Toilet()
    }
}
