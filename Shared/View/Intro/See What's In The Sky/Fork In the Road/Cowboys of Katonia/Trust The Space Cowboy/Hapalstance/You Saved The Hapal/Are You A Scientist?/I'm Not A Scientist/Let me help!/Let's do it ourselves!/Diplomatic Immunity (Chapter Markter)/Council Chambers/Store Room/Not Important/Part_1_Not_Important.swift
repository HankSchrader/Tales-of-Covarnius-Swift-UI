//
//  Part_1_Not_Important.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_1_Not_Important: View {
    static let PageName = "Part_1_Not_Important"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    
    var body: some View {
        let text =
        "“Oh, I almost forgot!” Chrono says, then hands you a small device. The item looks like a hearing aid.\n\n“What does it do?” You ask Chrono.\n\n“Put it in your ear,” Chrono instructs. “It will allow you to hear what the Sinisterians are saying in your language. Good thing I remembered it.”\n\n“Good call,” you tell Chrono. That must have been what was nagging at you. You can’t very well undergo a top secret alien mission without being able to understand a word being said.\n\nYou make a mental note to yourself to be more careful in the future. That could have been a disaster."

        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Keep_Thinking.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Covarnius iPad" : "Covarnius", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_1_Not_Important_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Not_Important()
    }
}
