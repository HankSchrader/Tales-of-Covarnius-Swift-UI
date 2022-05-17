//
//  Part_2_House.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_2_House: View {
    static let PageName = "Part_2_House"
    let isIpad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text = "This is no time to be indecisive, you need to follow through with your plan. Carefully opening the door, you step into a small hallway.\n\nYou go through the door to the right and find yourself in a cozy little kitchen. A table and chairs sits in one corner next to a fuzzy, crimson colored plant. There is a sink, refrigerator and all the other amenities of an Earth kitchen with several gadgets you’ve never seen before."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_House.PageName
        let storyView: StoryPayload = StoryPayload(text: text,  image: isIpad ? "Outside Home" : "Outside Home iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_House_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_House()
    }
}
