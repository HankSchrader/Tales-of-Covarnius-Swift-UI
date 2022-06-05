//
//  Constants.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/1/21.
//

import Foundation
import SwiftUI
struct Constants {
    static let ipadFontSize = 24
    static let ContinuePhrase = "Keep Going"
    static let GameOverPhrase = "GAME OVER"
    static let isIPad = UIDevice.current.userInterfaceIdiom == .pad
    
    static let chapters = [Part_1_Intro.PageName,
                           Part_1_Dissect_My_Brains.PageName,
                           Part_1_Fork_In_The_Road.PageName,
                           Part_1_Cowboys_Of_Katonia.PageName,
                           Part_1_Fake_Til_You_Make.PageName,
                           Part_1_Hapalstance.PageName,
                           Part_1_Save_The_Hapal.PageName,
                           Part_1_Diplomatic_Immunity.PageName,
                           Part_1_Boarding_Ticket.PageName,
                           Part_1_Not_Scientist.PageName,
                           Part_1_Greatest_Scientist.PageName,
                           Part_1_Hapal_Down.PageName,
                           Part_2_Hypersleep.PageName]
    
    static let chapterMap = [
        Part_1_Intro.PageName: Chapter(pageName: Part_1_Intro.PageName, chapterTitle: "Adventure Time!", order: 2),
        Part_1_Dissect_My_Brains.PageName: Chapter(pageName: Part_1_Dissect_My_Brains.PageName, chapterTitle: "Fork In The Road", order: 3),
        Part_1_Fork_In_The_Road.PageName: Chapter(pageName: Part_1_Fork_In_The_Road.PageName, chapterTitle: "Fork In The Road", order: 3) ,
        
        Part_1_Cowboys_Of_Katonia.PageName: Chapter(pageName: Part_1_Cowboys_Of_Katonia.PageName, chapterTitle: "Cowboys of Katonia", order: 4),
        Part_1_Hapalstance.PageName: Chapter(pageName: Part_1_Hapalstance.PageName, chapterTitle: "Random Hapalstance", order: 5),
        Part_1_Hapal_Down.PageName: Chapter(pageName: Part_1_Hapal_Down.PageName, chapterTitle: "Let Hapal Down", order: 6),
        Part_1_Save_The_Hapal.PageName: Chapter(pageName: Part_1_Save_The_Hapal.PageName, chapterTitle: "Save The Hapal", order: 6),
        Part_1_Greatest_Scientist.PageName: Chapter(pageName: Part_1_Greatest_Scientist.PageName, chapterTitle: "The King", order: 7),
        Part_1_Fake_Til_You_Make.PageName: Chapter(pageName: Part_1_Fake_Til_You_Make.PageName, chapterTitle: "Fakin' It", order: 8),

        Part_1_Not_Scientist.PageName: Chapter(pageName: Part_1_Not_Scientist.PageName, chapterTitle: "Time To Help!", order: 9),
        
     
        
        Part_1_Diplomatic_Immunity.PageName: Chapter(pageName: Part_1_Diplomatic_Immunity.PageName, chapterTitle: "Diplomatic Immunity", order: 10),
        
        Part_1_Boarding_Ticket.PageName: Chapter(pageName: Part_1_Boarding_Ticket.PageName, chapterTitle: "Boarding Ticket?", order: 11),
       

        Part_2_Hypersleep.PageName: Chapter(pageName: Part_2_Hypersleep.PageName, chapterTitle: "Rise and Shine!", order: 12),
        Part_1_Sneak.PageName: Chapter(pageName: Part_1_Sneak.PageName, chapterTitle: "Raid on Covarnius", order: 12)
    ]
    
    
    
}

public func adjustOffSetByImage(image: String) -> (x: CGFloat, y: CGFloat) {
        switch image {
        case "Chief Korgle iPhone 2": return (-20.0, 30.0)
      
        case "Covarnian Cruiser iPhone Modded": return (-20.0, -10.0)
        case "Toilet iPhone mod": return (-40.0, 0.0)
        case "Chief Korgle iPhone 3": return (-20.0, -20.0)
        case "Blasters iPhone": return (-20.0, -10.0)
        case "Hyper Sleep iPhone": return (-10.0, 50.0)
        case "Hyper Sleep iPhone 2": return (-10.0, 100.0)
        case "Control Room iPhone": return (-10.0, 50.0)
        case "Hall of Heroes iPhone": return (0.0, 40.0)
        case "Katonian iPhone": return (0.0, 40.0)
        case "Hall of Heroes iPhone 2": return (0.0, 135.0)
        default: return (0.0, 0.0)
    }
}

