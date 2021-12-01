//
//  Part_2_Make_A_Run_For_It.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_2_Make_A_Run_For_It: View {
    var body: some View {
        VStack {
        Text("“Our ship broke down,” you say with hesitation. “We need help repairing it.”\n\nThe cowboy smiles. “Well then, you crash landed on the right planet. One of my ranch hands, Kebo, is an excellent mechanic. He’ll get you fixed up in no time.”\n\nYou exchange a look with Chrono, still uncertain whether or not to trust him.\n\n“My name is Kayo, by the way,” he continues. You can stay in the ranch house while we get your ship running good as new. My wife, Kina, will be fixing dinner. I’m sure you all must be starving.”\n\nLuna licks her lips as if she understands that dinner is being discussed")
                .fontWeight(.light)
                .padding()
                Spacer()
            NavigationLink(destination: Part_2_Trust_The_Space_Cowboy()) {
                       Text("Continue")
                   }
    }
    }
}

struct Part_2_Make_A_Run_For_It_Previews: PreviewProvider {
    static var previews: some View {
        Part_2_Make_A_Run_For_It()
    }
}
