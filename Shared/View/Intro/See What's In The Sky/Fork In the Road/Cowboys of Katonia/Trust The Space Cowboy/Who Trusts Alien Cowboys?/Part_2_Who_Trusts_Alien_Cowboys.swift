//
//  Part_2_Trust_The_Space_Cowboy.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Who_Trusts_Alien_Cowboys: View {
    static let PageName = "Part_2_Who_Trusts_Alien_Cowboys"
    @State var showMenu = false
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    var body: some View {
        let text =
        "You watch them working for what seems like an eternity. You sit down on the barren earth and watch the sun dip down into the sky, setting over the strange horizon.\n\nThe soft couch and roaring fire seemed awfully inviting, but at least you know they're not stealing your only means back to Earth.\n\nThe sound of Kayo’s voice awakens you. “Your ship is all set now, partner.”\n\nApparently you dozed off on the cold hard ground. You jump up and brush the dust from your clothes. You’re cold, tired and ready to go home."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Hapalstance.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ? "Katonian" : "Katonian iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
        }
    }

struct Part_2_Who_Trusts_Alien_Cowboys_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Who_Trusts_Alien_Cowboys()
    }
}
