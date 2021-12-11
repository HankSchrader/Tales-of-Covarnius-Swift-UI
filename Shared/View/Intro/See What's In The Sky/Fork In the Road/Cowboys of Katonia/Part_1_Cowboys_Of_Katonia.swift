//
//  Part_1_Cowboys_of_Katonia.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Cowboys_Of_Katonia: View {
    var body: some View {
        let isIPad = UIDevice.current.userInterfaceIdiom == .pad
        VStack {
        Text("This is just too much, too soon. The vastness of space is terrifying, and feelings of homesickness weigh heavily upon you.\n\n“Take me back to Earth!” you shout panicked at Chrono.\n\n“I’m afraid that’s not possible,” he replies, sighing. “You see, the course has already been set for Covarnius. I can’t undo it.”\n\n“There’s got to be something we can do,” you say desperately. You hit buttons and switches on the control console in front of you.\n\n“No, don’t do that!” Chrono shouts with horror. “This is a very delicate piece of machinery!”\n\nThe lights in the ship begin to flicker on and off. A loud static sound can be heard. Perhaps you shouldn’t have messed with the controls after all.")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_2_Cowboys_Of_Katonia()) {
                       Text("Continue")
                   }
        }
    }
}

struct Part_1_Cowboys_Of_Katonia_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Cowboys_Of_Katonia()
    }
}