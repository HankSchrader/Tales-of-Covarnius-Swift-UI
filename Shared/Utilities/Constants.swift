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
 
    
    static let chapters = [Part_1_Intro.PageName,
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
        Part_1_Intro.PageName: Chapter(pageName: Part_1_Intro.PageName, chapterTitle: "Time For An Adventure!", order: 1),
        
        Part_1_Fork_In_The_Road.PageName: Chapter(pageName: Part_1_Fork_In_The_Road.PageName, chapterTitle: "Fork In The Road", order: 2) ,
        
        Part_1_Cowboys_Of_Katonia.PageName: Chapter(pageName: Part_1_Cowboys_Of_Katonia.PageName, chapterTitle: "Cowboys of Katonia", order: 3),
        Part_1_Hapalstance.PageName: Chapter(pageName: Part_1_Hapalstance.PageName, chapterTitle: "By Random Hapalstance", order: 4),
        Part_1_Hapal_Down.PageName: Chapter(pageName: Part_1_Hapal_Down.PageName, chapterTitle: "Let The Hapal Down", order: 5),
        Part_1_Save_The_Hapal.PageName: Chapter(pageName: Part_1_Save_The_Hapal.PageName, chapterTitle: "Save The Hapal", order: 6),
        Part_1_Greatest_Scientist.PageName: Chapter(pageName: Part_1_Greatest_Scientist.PageName, chapterTitle: "The King and the Invasion", order: 7),
        Part_1_Fake_Til_You_Make.PageName: Chapter(pageName: Part_1_Fake_Til_You_Make.PageName, chapterTitle: "Fake it til you make it", order: 8),

        Part_1_Not_Scientist.PageName: Chapter(pageName: Part_1_Not_Scientist.PageName, chapterTitle: "Not A Scientist!", order: 9),
        
     
        
        Part_1_Diplomatic_Immunity.PageName: Chapter(pageName: Part_1_Diplomatic_Immunity.PageName, chapterTitle: "Diplomatic Immunity", order: 10),
        
        Part_1_Boarding_Ticket.PageName: Chapter(pageName: Part_1_Boarding_Ticket.PageName, chapterTitle: "Where's Your Boarding Ticket?", order: 11),
       
        
        Part_2_Hypersleep.PageName: Chapter(pageName: Part_2_Hypersleep.PageName, chapterTitle: "Rise and Shine!", order: 12)
    ]
    
}
