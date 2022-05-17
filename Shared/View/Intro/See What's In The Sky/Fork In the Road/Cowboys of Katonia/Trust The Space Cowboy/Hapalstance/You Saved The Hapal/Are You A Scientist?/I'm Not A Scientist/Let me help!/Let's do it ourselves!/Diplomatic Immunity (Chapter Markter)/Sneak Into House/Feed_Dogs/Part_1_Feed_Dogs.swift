//
//  Part_1_Feed_Dogs.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_1_Feed_Dogs: View {
    static let PageName = "Part_1_Feed_Dogs"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "All dogs like snacks! And these things are...pretty much dogs.\n\nYou edge closer to the refrigerator and carefully open the door. There are several different options you could offer to the growlics. Which one is the best though? You have a feeling that offering them something not to their liking could spell disaster.\n\nThere’s a big steak, but it smells so bad you nearly gag. Dogs do like meat though, and Growlics probably do too. "
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Feed_Dogs.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIpad ? "3 foods iPad" : "3 foods", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
    
  
}

struct Part_1_Feed_Dogs_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Feed_Dogs()
    }
}
