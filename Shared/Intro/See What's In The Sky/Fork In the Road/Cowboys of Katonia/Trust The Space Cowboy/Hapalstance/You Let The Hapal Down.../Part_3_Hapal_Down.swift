//
//  Part_3_Hapal_Down.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_3_Hapal_Down: View {
    var body: some View {
        VStack {
        Text("The next thing you know, you wake up with a loud yawn. A strange dream occupied your mind while you slept, something about an alien and a spaceship…\n\nYou glance frantically at your surroundings and it all comes back to you.\n\nChrono, your alien companion, is waking up as well. “Ah, we’re finally here!” he announces, stretching out his long slender arms.\n\nThe ship quietly descends on a planet that looks similar to Earth. Aliens that look like Chrono surround the ship as you land. The ship's top opens and the air lock’s decompression sequence fills the air once again.\n\n“Bonjour!” One of the aliens bellows as he steps closer to the ship. He seems to be the one in charge. Or at least, that’s what you assume based on the large crown worn atop his head.\n\n“You’re going to need to adjust your translators,” Chrono says with a yawn. “This Earthling doesn’t speak French.”")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_3_Hapal_Down()) {
                       Text("Continue")
                   }.padding()
    }
}
}

struct Part_3_Hapal_Down_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Hapal_Down()
    }
}
