//
//  Turn_Into_Frog.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Turn_Into_Frog: View {
    static let PageName = "Turn_Into_Frog"
    @State var showMenu = false
     
    var body: some View {
        let text =
        "You quickly grab the red liquid. It smells very strange, a mixture of honey and fresh cut grass. After mixing the red liquid with the yellow mixture, a look of sheer horror crosses the Covarnian scientist’s face.\n\nBefore you know it, you realize that the scientist is looking down at you. He’s a giant!\n\nTo your left is a giant table. To your right is a giant door. You call out for help!\n\n“Ribbit, Ribbit!” You cry out to the scientist. Every time you speak, only croaks come out.\n\nThe scientist picks you up and put you in an incubator. Now you can soak up some light while he comes up with a solution...this situation is not exactly a “hoppy” ending!"
        let decision1 =  Constants.GameOverPhrase
        let firstChoicePageName = "Title View"
        let storyView: StoryPayload = StoryPayload(text: text,image: Constants.isIPad ? "GameOver Frog" : "GameOver Frog iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
             DisplayView(showMenu: self.$showMenu, view: storyView)
        }
    }


struct Turn_Into_Frog_Previews: PreviewProvider {
    static var previews: some View {
        Turn_Into_Frog()
    }
}
