//
//  Silver_Ending.swift
//  Tales of Covarnius
//
//  Created by Erik Mikac on 5/4/22.
//

import SwiftUI

struct Silver_Ending: View {
    static let PageName = "Silver"
    @State var showMenu = false
 

    var body: some View {
        let text = ""

        let decision1 = "Congratulations!"
        let firstChoicePageName = DedicationView.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Gold", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Silver_Ending_Previews: PreviewProvider {
    static var previews: some View {
        Silver_Ending()
    }
}
