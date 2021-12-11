//
//  Part 1 Fork In The Road.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Fork_In_The_Road: View {
    @State var showMenu = false
    static let PageName = "Part_1_Fork_In_The_Road"
    var body: some View {
        let decision1 = Constants.ContinuePhrase
        let text =
        "Thoughts of scalpels and examination tables suddenly fill your head. The last thing you want is to become a test subject in some alien experiment!\n\nYou tell the alien that you won’t go with him. “How do I know you won’t just dissect my brain?” you ask accusingly. Your fists are clenched with anger and fright.\n\nThe alien stares at you as if you are completely crazy.\n\n“Why on Covarnius would I do a thing like that?” The alien asks indignantly. “Do you have any idea how messy that would be?”"
    
        let firstChoicePageName = Part_2_Fork_In_The_Road.PageName

        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)

    }
}

struct Part_1_Fork_In_The_Road_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Fork_In_The_Road()
    }
}
