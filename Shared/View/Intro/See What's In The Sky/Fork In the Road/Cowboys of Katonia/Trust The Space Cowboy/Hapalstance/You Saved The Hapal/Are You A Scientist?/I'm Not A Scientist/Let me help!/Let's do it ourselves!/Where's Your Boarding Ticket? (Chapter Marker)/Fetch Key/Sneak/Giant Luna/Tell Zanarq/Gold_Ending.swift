//
//  Gold_Ending.swift
//  Tales of Covarnius
//
//  Created by Erik Mikac on 5/4/22.
//

import SwiftUI

struct Gold_Ending: View {
    static let PageName = "Gold"
    @State var showMenu = false
 

    var body: some View {
        let text = ""

        let decision1 = "You did it!!!"
        let firstChoicePageName = Part_1_Intro.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Gold", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}
