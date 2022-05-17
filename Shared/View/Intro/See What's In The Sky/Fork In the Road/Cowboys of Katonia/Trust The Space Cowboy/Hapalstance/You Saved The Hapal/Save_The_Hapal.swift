//
//  Part_1_Save_The_Hapal.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Save_The_Hapal: View {
    static let PageName = "Part_1_Save_The_Hapal"
    @State var showMenu = false
    var body: some View {
        let text =
        "Kayo helped you, now you’re going to help him! Or at least you’re going to try...\n\nYou take off in the direction that Kayo went. Luna follows close behind with her tongue hanging out the side.\n\n“Where are you going?” Chrono asks. “The ship is fixed, we can get out of here now!”\n\nYou shake your head. “Kayo helped us when we needed it. Now we need to help him… and whatever a baby hapal is.”\n\nAs you round the corner of the ranch house, you see Kayo and Kina crouching near the small opening of a cave.\n\n"

        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Save_The_Hapal.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Hapal", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_2_Save_The_Hapal: View {
    static let PageName = "Part_2_Save_The_Hapal"
    @State var showMenu = false
    var body: some View {
        let text =
        "“What’s the matter?” you ask, approaching the couple.\n\nKayo and Kina stand up and you can see the worried looks on their faces.\n\n“The baby hapal wandered into this cave and now he’s too afraid to come out,” Kayo explains. “The problem is, we’re all too big to get through this opening to nab 'im.”"
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Save_The_Hapal.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Hapal", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}


struct Part_3_Save_The_Hapal: View {
    static let PageName = "Part_3_Save_The_Hapal"
    @State var showMenu = false
    var body: some View {
        let text =
        "You hear the baby hapal let out another cry. It’s almost dark out now and even darker in the small cave.\n\nThe cave's opening is small, but not too small for you. You stoop down to the opening. It’s a tight squeeze but you just make it.\n\nHuddled in a corner of the cave, you see a strange looking animal. It's a little larger than Luna. It looks somewhat like a horse but with the same pale orange coloring of Kayo and Kina. A long antenna protrudes from the small creature's head, just above it’s three large eyes that look filled with terror."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Save_The_Hapal.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Hapal", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Save_The_Hapal: View {
    static let PageName = "Part_4_Save_The_Hapal"
    @State var showMenu = false
    var body: some View {
        let text =
        "“It’s ok,” you tell the baby hapal. You extend your hand as you crouch down near the small animal. The baby hapal takes a step toward you. You reach out and scratch its ears the same way you do with Luna.\n\n“Let’s get you out of here,” you tell the baby hapal. You pick up the small animal and make your way to the opening in the cave. Kayo is on the other side, peering in with a small light. You hand the baby hapal to him and then make your way out."
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_5_Save_The_Hapal.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Hapal", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_5_Save_The_Hapal: View {
    static let PageName = "Part_5_Save_The_Hapal"
    @State var showMenu = false
    var body: some View {
        let text =
        "“You did it! You saved the baby hapal!” Kayo exclaims. “How can we ever thank you?”\n\n“You’ve already done so much for us, it was the least I could do,” you tell the couple.\n\n“That was just some Katonian hospitality,” Kayo says with a wave of his hand. What you did to rescue our hapal was above and beyond… Now if you ever need anything, anything at all. Don’t you hesitate to ask.”\n\nKayo and Kina walk you back to your ship and Kina gives you a big bag of mekop for the road... er, um journey.\n\nYou, Chrono and Luna jump into the ship and wave goodbye as you ascend into the sky. You’re glad you were able to help them rescue their baby hapal. It’s a good thing you had to make an emergency landing after all!"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_6_Save_The_Hapal.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Hapal", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

//TODO: Delete this dead code.
struct Part_5_2_Save_The_Hapal: View {
    static let PageName = "Part_5_2_Save_The_Hapal"
    @State var showMenu = false
    var body: some View {
        let text =
        ""
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_6_Save_The_Hapal.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Hapal", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}


struct Part_6_Save_The_Hapal: View {
    static let PageName = "Part_6_Save_The_Hapal"
    @State var showMenu = false
    var body: some View {
        let text =
        "“Ok, onwards to Covarnius then,” Chrono says, “to finally stop the Sinisterians!”\n\nYou still want to go back to Earth, but crashing the ship again isn’t going to get you there. “On to Covarnius,” you agree.\n\nHelping Kayo and Kina rescue their baby hapal made you happy. Maybe you’d be able to help the Covarnians too, then head back to Earth as an intergalactic hero.\n\nYou wonder what kind of issues the Covarnians are having as Chrono engages hypersleep. The last thought that crosses your mind is: What is a Sinisterian?"
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_1_Landing.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: "Hapal", decision1: decision1, firstChoicePageName: firstChoicePageName)
        DisplayView(showMenu: self.$showMenu, view: storyView)

    }
}
