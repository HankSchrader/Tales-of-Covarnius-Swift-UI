//
//  Bronze_Ending.swift
//  Tales of Covarnius
//
//  Created by Erik Mikac on 5/4/22.
//

import SwiftUI

struct Bronze_Ending: View {
    static let PageName = "Bronze"
    @State var showMenu = false
 

    var body: some View {
        let text = ""

        let decision1 = "You Earned the THIRD best Ending!"
        let firstChoicePageName = Part_1_Intro.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Bronze", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Bronze_Ending_Previews: PreviewProvider {
    static var previews: some View {
        Bronze_Ending()
    }
}
