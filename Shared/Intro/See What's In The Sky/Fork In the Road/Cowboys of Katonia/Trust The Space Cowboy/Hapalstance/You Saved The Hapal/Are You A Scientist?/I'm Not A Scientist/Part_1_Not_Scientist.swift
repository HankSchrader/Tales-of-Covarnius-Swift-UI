//
//  Part_1_Not_Scientist.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Not_Scientist: View {
    var body: some View {
        VStack {
        Text("A stunned expression on the king’s face quickly turns to one of rage.\n\n“What do you mean you’re not a scientist?” King Zanarq shouts in his deep booming voice. The other aliens in the surrounding area all grow quiet and grave looks of concern wash over their faces.\n\nKing Zanarq regains his composure, takes a deep breath and shifts his piercing eyes towards Chrono.\n\n“Chrono, what is the meaning of this?” King Zanarq continues. “You mean to tell me that you messed up again? That you brought back the WRONG earthling?”\n\n“I, I um…” Chrono stumbles over his words. The tension could be cut with a knife. This is hard to watch.")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_2_Not_Scientist()) {
                       Text("Continue")
                   }.padding()
            
    }
    }
}

struct Part_1_Not_Scientist_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Not_Scientist()
    }
}
