//
//  Part_1_Toilet_To_Hyper_Sleep.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/13/21.
//

import SwiftUI

struct Part_1_Toilet_To_Hyper_Sleep: View {
    static let PageName = "Part_1_Toilet_To_Hyper_Sleep"
    @State var showMenu = false
    var body: some View {
       let text =
        "You keep looking around the high tech console. You’re about to give up and go help Chrono, until you see a bright red button positioned in the upper right hand corner of the console. EMERGENCY DISENGAGE HYPERSLEEP. You smile to yourself, it’s a miracle you found it! You reach out and press the button and the monitors nearby light up.\n\n“Please insert the override key now,” a digitized voice instructs from the speakers.\n\nJust as expected, the key comes in handy.\n\nYou pull the key out of your pocket and insert it into the console. It works! You only have a moment to revel in your victory before you hear the sound of tons of groggy Sinisterians stirring. With no time to lose, you hightail it out of the Hypersleep Chamber"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_2_Toilet_To_Hyper_Sleep.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}


struct Part_2_Toilet_To_Hyper_Sleep: View {
    static let PageName = "Part_2_Toilet_To_Hyper_Sleep"
    @State var showMenu = false
    var body: some View {
       let text =
        "A smooth robotic voice says, “HYPERSLEEP: DEACTIVATED.”\n\nTime to get out of here!\n\nYou hurry down the hallway to meet up with Chrono. Hopefully, you can help him. A cold, evil voice shouts at you from behind.\n\n“Why did you clog all those toilets?” the quartermaster screeches angrily.\n\nYou stare at him weakly for a moment, “It...it was the tre-bok,” you say shrugging your shoulders, using the same excuse as before"
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_3_Toilet_To_Hyper_Sleep.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_3_Toilet_To_Hyper_Sleep: View {
    static let PageName = "Part_3_Toilet_To_Hyper_Sleep"
    @State var showMenu = false
    var body: some View {
       let text =
        "“Tre-bok my foot! You’re never getting off this ship! You’re going to be a janitor here for the rest of your—”\n\nThe same smooth robotic voice blares from the ship’s intercom: “HYPERSLEEP DEACTIVATION: COMMENCING.”\n\nThe announcement stops the arrogant quartermaster dead in his tracks. Suddenly, it's as if the crew completely forgets you're there! The chief, quartermaster, and the few remaining guards sprint towards the hypersleep chamber, feebly attempting to correct your sabotage.\n\nIt worked! Time to help Chrono."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_4_Toilet_To_Hyper_Sleep.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}

struct Part_4_Toilet_To_Hyper_Sleep: View {
    static let PageName = "Part_4_Toilet_To_Hyper_Sleep"
    @State var showMenu = false
    var body: some View {
       let text =
        "The coast is clear! You jog back to the area where you, Chrono, and Chief Korgle were having a discussion. Chrono is nowhere to be found! Was he captured? Or did he take advantage of the distraction?\n\nIn the next moment, Chrono appears at the door opposite to the one you had just entered from. He gives you a thumbs up and then heads back into the next room: the Control Room. You hope that your distraction will be enough time for Chrono to complete the mission. Rushing to the door, you see that Chrono is already hard at work, typing in long strings of what appears as gibberish to you.\n\nA bead of sweat rolls down Chrono’s face. You can tell he’s nervous, and he’s not the only one. You look back out into the hallway, expecting to see the chief any moment."
        
        let decision1 = Constants.ContinuePhrase
        let firstChoicePageName = Part_5_Hypersleep.PageName
        let storyView: StoryPayload = StoryPayload(text: text, decision1: decision1, firstChoicePageName: firstChoicePageName)
        return DisplayView(showMenu: self.$showMenu, view: storyView)
    }
}


