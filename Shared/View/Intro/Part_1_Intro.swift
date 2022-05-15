//
//  Page 1-1.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/29/21.
//

import Foundation
import SwiftUI

struct Part_1_Intro: View {
    @State var showMenu = false
    let defaults = UserDefaults.standard
    static let PageName: String = "Part_1_Intro"
    var image = "Luna With Bee"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    init() {
       
        let chaptersOptional = UserDefaults.standard.array(forKey: DefaultsKeys.unlockedChapters)
        if chaptersOptional == nil {
            UserDefaults.standard.set( [Part_1_Intro.PageName], forKey: DefaultsKeys.unlockedChapters)
        }
        if(isIPad) {
            self.image = "Luna With Bee iPad"
        }
    }

    var body: some View {
        let text =
        "You walk your dog Luna down a neighborhood street, without a care in the world. The streets are eerily empty.\n\nAs much as you enjoy walking Luna, you’re still looking forward to getting back home, making a snack and watching some cartoons.\n\nJust as you are about to circle back home, a strange aircraft emerges from the sky. It’s large and shaped like a saucer. Your first instinct is to run away, but you also want to see what the strange object is. "
        let decision1 = "Run Away!"
        let decision2 = "See what's in the sky."
        let firstChoicePageName = "Part_1_Run_Away"
        let secondChoicePageName = "Part_1_See_What_In_The_Sky"
        let storyView: StoryPayload = StoryPayload(text: text, image: self.image, decision1: decision1,
                                                   firstChoicePageName: firstChoicePageName,
                                                   secondChoicePageName: secondChoicePageName,
                                                   decision2: decision2)
             DisplayView(showMenu: self.$showMenu, view: storyView)
            .environmentObject(ImageModel())
                }


}



