//
//  Part_1_Wing_It.swift
//  Tales-of-Covarnius-Swift-UI
//
//  Created by Erik Mikac on 11/30/21.
//

import SwiftUI

struct Part_1_Wing_It: View {
    var body: some View {
        Text("You pick up a beaker filled with a strange smelling liquid. It’s red, bubbly and seems important. As you bring it up to eye level to observe its contents, the Covarnian scientist lets out a sigh of exasperation.\n\n“The cloaking device is a composite of these chemicals...but I just can’t figure out which ones!” the scientist says, clearly disheartened.\n\nHe notices you holding the beaker. “What are you doing with the electrolytic catalyst accelerator?” he asks in awe")
            .fontWeight(.light)
            .padding()
            Spacer()
        NavigationLink(destination: Part_2_Wing_It()) {
                   Text("Continue")
               }
        .padding()
    }
}

struct Part_1_Wing_It_Previews: PreviewProvider {
    static var previews: some View {
        Part_1_Wing_It()
    }
}
