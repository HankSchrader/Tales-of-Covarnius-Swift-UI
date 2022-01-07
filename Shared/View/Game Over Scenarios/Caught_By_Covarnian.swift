//
//  Caught_By_Covarnian.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Caught_By_Covarnian: View {
    static let PageName = "Caught_By_Covarnian"
    @State var showMenu = false
    var body: some View {
        let text =
        "That was a mistake. Hindsight, as they say, is 20/20...just like that guard’s eyesight. As soon as you peek into the window, you make eye contact with a giant Covarnian watchman.\n\n“Hey!” the guard yells. “Who is that in the storage room?”\n\n“Oh no, he saw us!” Chrono whispers, “why would you look through the window?” Chrono’s ire turns to you.\n\nThe guard swings the storage room door open. You’ve been caught! The jig is up.\n\n“What are you two doing in here?”\n\n“Well you see, we were—” you stammer, but he interrupts you.\n\n“Enough! All trespassers are to be sent to Covarnian Security for interrogation. The Sinisterians will be invading soon, and for all we know you two could be spies!” He pokes his ray gun at you. “What kind of alien are you? A Sinisterian minion, no doubt.”\n\nThe guard leads you to a small, austere building. After several hours of intense questioning, you are promptly sent back to Earth. You never even get a chance to say goodbye to Chrono. At least they are letting you take Luna."
        
        let decision1 =  Constants.GameOverPhrase
        let firstChoicePageName = "Title View"
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
             DisplayView(showMenu: self.$showMenu, view: storyView)
        }
    }


struct Caught_By_Covarnian_Previews: PreviewProvider {
    static var previews: some View {
        Caught_By_Covarnian()
    }
}
