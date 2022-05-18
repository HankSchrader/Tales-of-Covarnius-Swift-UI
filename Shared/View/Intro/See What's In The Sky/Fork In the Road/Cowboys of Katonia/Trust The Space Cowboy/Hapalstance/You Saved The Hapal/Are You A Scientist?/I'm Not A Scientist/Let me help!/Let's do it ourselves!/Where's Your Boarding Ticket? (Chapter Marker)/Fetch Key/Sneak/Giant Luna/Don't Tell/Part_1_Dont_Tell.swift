//
//  Part_1_Dont_Tell.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Dont_Tell: View {
    static let PageName = "Part_1_Dont_Tell"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "Chrono looks at you, “Of course, we have to tell King Zanarq! We saved millions of Covarnians. So what if a couple of buildings got destroyed in the process. He’d never get mad at us for that.”\n\nAfter thinking about if for a moment, you smile at your alien friend. “I guess you’re right.”"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Tell.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image:  "Dance on Lawn",  decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Dont_Tell_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Dont_Tell()
    }
}
