//
//  Part_3_Cowboys_Of_Katonia.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Cowboys_Of_Katonia: View {
    static let PageName = "Part_3_Cowboys_Of_Katonia"
    @State var showMenu = false
     
    var body: some View {
      
        let text = "Before you know it, a huge planet appears in your line of sight. The spaceship shoots through its atmosphere and begins a clumsy descent. It lands on a dusty terrain and all the lights go out. Chrono tries to restart the ship to no avail.\n\n“Where are we?” you ask looking through the glass at the strange planet.\n\nChrono stops trying to restart the ship and looks out towards the horizon. “Based on the rocky desert terrain and low lying shrubbery… I’d have to say, I have no idea!” Chrono shouts with panic.\n\n“How are we going to get out of here?” you ask, your own panic matching Chrono’s."
          
            let decision1 = Constants.ContinuePhrase
            let firstChoicePageName = Part_4_Cowboys_Of_Katonia.PageName
        let storyView: StoryPayload = StoryPayload(text: text, image: Constants.isIPad ? "Crash Land" : "Crash Land iPhone", decision1: decision1, firstChoicePageName: firstChoicePageName)
            DisplayView(showMenu: self.$showMenu, view: storyView)
        
    }
}

struct Part_3_Cowboys_Of_Katonia_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Cowboys_Of_Katonia()
    }
}
