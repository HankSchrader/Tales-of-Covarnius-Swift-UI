//
//  Part_3_They_Are_Vicious.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/12/21.
//

import SwiftUI

struct Part_3_They_Are_Vicious: View {
    static let PageName = "Part_3_They_Are_Vicious"
    @State var showMenu = false
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "“One...two...three!” You take off running as fast as you can. The sudden motion startles the growlics, but you're able to make it past them. You, Chrono and Luna speed through the hallway of the small home and out the front door, slamming it shut behind you. You can hear the growlics snarl and howl from inside the house.\n\nYou didn’t get the uniforms, but at least you didn’t end up as dinner."
        
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_They_Are_Vicious.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Growlics iPad" : "Growlics", decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_They_Are_Vicious_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_They_Are_Vicious()
    }
}
