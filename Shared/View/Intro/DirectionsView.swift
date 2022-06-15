//
//  DirectionsView.swift
//  Tales of Covarnius
//
//  Created by Erik Mikac on 6/14/22.
//

import SwiftUI

struct DirectionsView: View {

    @State var showMenu = false
    static let PageName = "Directions"
    var body: some View {
        let text = "Thanks for playing! Unlocked chapters can be viewed by tapping the 3-lined button on the top right.\nTap the blue text on the bottom to make a decision."
        let decision1 = "Start the Adventure!"
        let firstChoicePageName = Part_1_Intro.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Running Down Hall", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
 
    }
}

struct DirectionsView_Previews: PreviewProvider {
    static var previews: some View {
        DirectionsView()
    }
}
