//
//  Part_5_Fork_In_The_Road.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_6_Fork_In_The_Road: View {
    static let PageName = "Part_6_Fork_In_The_Road"
    let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State var showMenu = false
    var body: some View {
        let text =
        "\"Just seven days? That’s not too bad.\" you breath a sigh of relief. A week was bad enough, but at least it wasn’t going to be thousands of years!\n\n...But still, you wonder if you made the right decision to travel to Covarnius. Your parents and your room back at home...it’s all on Earth. You feel homesick. What should you do?"

        let decision1 = "Chrono said only you can help."
        let decision2 = "Go back to Earth."

        let firstChoicePageName = Part_1_Greatest_Scientist.PageName
        let secondChoicePageName = Part_1_Cowboys_Of_Katonia.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: isIPad ?  "Earth_" : "Earth_iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName, secondChoicePageName: secondChoicePageName, decision2: decision2)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
        }
    }


