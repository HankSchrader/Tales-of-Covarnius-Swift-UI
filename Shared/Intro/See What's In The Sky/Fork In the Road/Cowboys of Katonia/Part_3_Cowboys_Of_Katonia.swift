//
//  Part_3_Cowboys_Of_Katonia.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Cowboys_Of_Katonia: View {
    var body: some View {
        VStack {
        Text("Before you know it, a huge planet appears in your line of sight. The spaceship shoots through its atmosphere and begins a clumsy descent. It lands shakily on a dusty terrain and then all the lights go out. Chrono tries to restart the ship to no avail.\n\n“Where are we?” you ask looking through the glass at the strange planet.\n\nChrono stops trying to restart the ship and looks out towards the horizon. “Based on the rocky desert terrain and low lying shrubbery… I’d have to say, I have no idea!” Chrono shouts with panic.\n\n“How are we going to get out of here?” you ask, your own panic matching Chrono’s. ")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_4_Cowboys_Of_Katonia()) {
                       Text("Continue")
                   }
        }
    }
}

struct Part_3_Cowboys_Of_Katonia_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Cowboys_Of_Katonia()
    }
}
