//
//  Went_Home.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import SwiftUI

struct Went_Home: View {
    
    @State var showMenu = false
    static let PageName = "Went_Home"

    var body: some View {

        let text =
        "You decide to keep going home. Let the aliens abduct someone else for their experiments. After catching your breath, you jog the rest of the way home with Luna. Bursting through the front door, you turn on the news to see if there is any update on an alien invasion. The man on the T.V is reporting on a story about a kitten that was just rescued from a tree. Nothing about an invasion."

        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Went_Home_2.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Game Over Kitty", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Went_Home_2: View {
    
    @State var showMenu = false
    static let PageName = "Went_Home_2"

    var body: some View {

        let text =
        "You make a snack and keep watching, but nothing ever happens. Eventually, you switch the channel over to cartoons and begin to wonder if you even really saw a spaceship.\n\nYou know what you saw though, and can’t help but wonder what the aliens wanted. As you head to bed, you wonder if you should have investigated after all.\n\nYou can’t help but think perhaps you missed out on the opportunity of a lifetime..."

        let decision1 = Constants.GameOverPhrase
        let firstChoicePageName = "Title View"
        let storyView: StoryPayload = StoryPayload(text: text, image: "Game Over Kitty", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Went_Home_Previews: PreviewProvider {
    static var previews: some View {
        Went_Home()
    }
}

