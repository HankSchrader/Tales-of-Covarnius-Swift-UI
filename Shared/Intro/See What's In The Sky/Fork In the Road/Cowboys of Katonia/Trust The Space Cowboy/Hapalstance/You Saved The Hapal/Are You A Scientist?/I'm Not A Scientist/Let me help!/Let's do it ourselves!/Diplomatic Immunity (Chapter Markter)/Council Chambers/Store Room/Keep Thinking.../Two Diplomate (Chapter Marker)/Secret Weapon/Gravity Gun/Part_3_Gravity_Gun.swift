//
//  Part_3_Gravity_Gun.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/2/21.
//

import SwiftUI

struct Part_3_Gravity_Gun: View {
    var body: some View {
        let text =
        "Chief Korgle opens the door next to the Control Room and ushers you inside. The room is spacious and has oversized chairs sitting around a table. Another smaller table sits off to one side filled with trays of something unidentifiable.\n\nChief Korgle notices you staring at the dish. “Care for some tre-bok?” he asks, lifting the tray. You take a closer look. It kind of looks like french fries but green and rubbery.\n\n“No thank you,” you politely decline. Hard telling how your stomach would react to such strange Sinisterian food."
        
        getPageView(mainText: text, firstChoice: AnyView(Part_4_Gravity_Gun()))
    }
}

struct Part_3_Gravity_Gun_Previews: PreviewProvider {
    static var previews: some View {
        Part_3_Gravity_Gun()
    }
}
