//
//  Page 1-3-See-What-In-The-Sky.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

struct Part_1_See_What_In_The_Sky: View {
    @State var showMenu = false
    static let PageName = "Part_1_See_What_In_The_Sky"
    var body: some View {

       let text =
        "Run away? No way, this is too good to miss!\n\nYou stop and look at the strange object descending slowly from the sky. As it gets closer, you see a creature inside, just behind the glass encasing. His complexion is green and he is about as tall as you are.\n\nButterflies fill your stomach. Maybe you should've ran while you had the chance..."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_See_Whats_In_The_Sky.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Chrono In Ship", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_See_What_In_The_Sky_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_See_What_In_The_Sky()
    }
}
