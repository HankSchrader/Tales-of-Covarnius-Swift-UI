//
//  Growlics.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Growlics: View {
    static let PageName = "Growlics"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Eh, growlics will eat anything,” you say casually to Chrono.\n\nThe growlics look at the food and give it a sniff. The scent makes them even angrier. (And here you thought it was scentless!)\n\nThe growlics are closing in on you. You search around the kitchen, looking for any means of escape. As luck would have it, you notice a door directly behind you! The three of you make your way inside."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Growlics_2.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Scaly Jello", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Growlics_2: View {
    static let PageName = "Growlics_2"
    @State var showMenu = false
    var body: some View {
        let text =
        "Slamming the door shut, you hear the growlics pound against the other side. You made it in, just in time! You quickly realize you’re in a pantry. Strange looking food lines the shelves and hang from the ceiling.\n\nThe good news is, you won’t go hungry while the growlics have you trapped in the pantry. And you’ll even get a chance to ask what that green scaly stuff is!\n\nThe bad news is, you’re going to have a lot of explaining to do when the Covarnian ambassador gets home!"
        
        let decision1 =  Constants.GameOverPhrase
        let firstChoicePageName = "Title View"
        let storyView: StoryPayload = StoryPayload(text: text, image: "Pantry", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}
