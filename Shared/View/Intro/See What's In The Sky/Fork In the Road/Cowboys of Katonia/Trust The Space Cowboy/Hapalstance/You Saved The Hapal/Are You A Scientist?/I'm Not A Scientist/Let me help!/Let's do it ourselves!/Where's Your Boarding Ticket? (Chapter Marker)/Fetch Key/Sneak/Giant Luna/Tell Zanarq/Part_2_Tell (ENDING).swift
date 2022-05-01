//
//  Part_2_Tell.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_Tell: View {
    static let PageName = "Part_2_Tell"
    @State var showMenu = false
    let defaults = UserDefaults.standard
    var body: some View {
        let text =
        "“Thank you, you both deserve a hero’s celebration.” The king says, but then his voice grows weary. “We must thank Luna too, but her fur will take years to clean up.”\n\n“There may be fur everywhere, but at least we have our planet back!” Chrono points out.\n\n“Yes,” King Zanarq chuckles warmly, “I suppose we do.”"
       
        
        var decision1 = "The End. Congratulations!"
        var firstChoicePageName = Part_1_Intro.PageName
        let currentlyUnlockedChapters: [String]? = defaults.array(forKey: DefaultsKeys.unlockedChapters) as! [String]?
        if let currentlyUnlockedChapters = currentlyUnlockedChapters {
            if currentlyUnlockedChapters.contains(Part_1_Save_The_Hapal.PageName) {
                decision1 = "The End??"
                firstChoicePageName = Secret_Ending.PageName
            }
        }
     
        let storyView: StoryPayload = StoryPayload(text: text, image: "Big Luna", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Tell_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Tell()
    }
}
