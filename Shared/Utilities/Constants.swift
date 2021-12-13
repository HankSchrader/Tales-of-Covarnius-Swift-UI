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
                           Part_1_Diplomatic_Immunity.PageName,
                           Part_1_Boarding_Ticket.PageName,
                           Part_1_Greatest_Scientist.PageName]
    
    
}
enum subviews {
    @ViewBuilder static subscript(string: String) -> some View {
        switch string {
        case Part_1_Intro.PageName:
            Part_1_Intro()
        case Part_1_Run_Away.PageName:
            Part_1_Run_Away()
        case Part_1_See_What_In_The_Sky.PageName:
            Part_1_See_What_In_The_Sky()
        case Part_2_Run_Away.PageName:
            Part_2_Run_Away()
        case Part_4_See_Whats_In_The_Sky.PageName:
            Part_4_See_Whats_In_The_Sky()
        case Part_3_See_Whats_In_The_Sky.PageName:
            Part_3_See_Whats_In_The_Sky()
        case Part_2_See_Whats_In_The_Sky.PageName:
            Part_2_See_Whats_In_The_Sky()
        case Part_6_Fork_In_The_Road.PageName:
            Part_6_Fork_In_The_Road()
        case Part_5_Fork_In_The_Road.PageName:
            Part_5_Fork_In_The_Road()
        case Part_4_Fork_In_The_Road.PageName:
            Part_4_Fork_In_The_Road()
        case Part_3_Fork_In_The_Road.PageName:
            Part_3_Fork_In_The_Road()
        case Part_2_Fork_In_The_Road.PageName:
            Part_2_Fork_In_The_Road()
        case Part_1_Fork_In_The_Road.PageName:
            Part_1_Fork_In_The_Road()
        case Part_1_Dissect_My_Brains.PageName:
            Part_1_Dissect_My_Brains()
        case Part_2_Dissect_My_Brains.PageName:
            Part_2_Dissect_My_Brains()
        case Bright_Green.PageName:
            Bright_Green()
        case Went_Home.PageName:
            Went_Home()
        case Bad_Distraction.PageName:
            Bad_Distraction()
        case Caught_By_Covarnian.PageName:
            Caught_By_Covarnian()
        case Got_Caught.PageName:
            Got_Caught()
        case Turn_Into_Frog.PageName:
            Turn_Into_Frog()
        case Abandonded_Chrono.PageName:
            Abandonded_Chrono()
        case Part_1_Cowboys_Of_Katonia.PageName:
            Part_1_Cowboys_Of_Katonia()
        case "Part_2_Cowboys_Of_Katonia":
            Part_2_Cowboys_Of_Katonia()
        case "Part_3_Cowboys_Of_Katonia":
            Part_3_Cowboys_Of_Katonia()
        case "Part_4_Cowboys_of_Katonia":
            Part_4_Cowboys_Of_Katonia()
        case "Part_5_Cowboys_Of_Katonia":
            Part_5_Cowboys_Of_Katonia()
        case "Part_1_Make_A_Run_For_It":
            Part_1_Make_A_Run_For_It()
        case "Part_2_Make_A_Run_For_It":
            Part_2_Make_A_Run_For_It()
        case "Part_1_Trust_The_Space_Cowboy":
            Part_1_Trust_The_Space_Cowboy()
        case "Part_2_Trust_The_Space_Cowboy":
            Part_2_Trust_The_Space_Cowboy()
        case "Part_3_Trust_The_Space_Cowboy":
            Part_3_Trust_The_Space_Cowboy()
        case "Part_4_Trust_The_Space_Cowboy":
            Part_4_Trust_The_Space_Cowboy()
        case "Part_5_Trust_The_Space_Cowboy":
            Part_5_Trust_The_Space_Cowboy()
        case "Part_1_Who_Trusts_Alien_Cowboys":
            Part_1_Who_Trusts_Alien_Cowboys()
        case "Part_2_Who_Trusts_Alien_Cowboys":
            Part_2_Who_Trusts_Alien_Cowboys()
        case Part_1_Hapalstance.PageName:
            Part_1_Hapalstance()
        case Part_2_Hapalstance.PageName:
            Part_2_Hapalstance()
        case "Part_3_Hapalstance":
            Part_3_Hapalstance()
        case "Part_4_Hapalstance":
            Part_4_Hapalstance()
        case "Part_1_Hapal_Down":
            Part_1_Hapal_Down()
        case "Part_2_Hapal_Down":
            Part_2_Hapal_Down()
        case "Part_3_Hapal_Down":
            Part_3_Hapal_Down()
        case "Part_1_Save_The_Hapal":
            Part_1_Save_The_Hapal()
        case "Part_2_Save_The_Hapal":
            Part_2_Save_The_Hapal()
        case "Part_3_Save_The_Hapal":
            Part_3_Save_The_Hapal()
        case "Part_4_Save_The_Hapal":
            Part_4_Save_The_Hapal()
        case Part_1_Landing.PageName:
            Part_1_Landing()
        case Part_2_Landing.PageName:
            Part_2_Landing()
        case Part_1_Fake_Til_You_Make.PageName:
            Part_1_Fake_Til_You_Make()
        case Part_2_Fake_Til_You_Make.PageName:
            Part_2_Fake_Til_You_Make()
        case Part_1_Wing_It.PageName:
            Part_1_Wing_It()
        case Part_2_Wing_It.PageName:
            Part_2_Wing_It()
        case Part_1_Not_Scientist.PageName:
            Part_1_Not_Scientist()
        case Part_2_Not_Scientist.PageName:
            Part_2_Not_Scientist()
        case Part_3_Not_Scientist.PageName:
            Part_3_Not_Scientist()
        case Part_4_Not_Scientist.PageName:
            Part_4_Not_Scientist()
        
        case Part_1_Warmongers.PageName:
            Part_1_Warmongers()
        
        case Part_1_Greatest_Scientist.PageName:
            Part_1_Greatest_Scientist()
        case Part_2_Greatest_Scientist.PageName:
            Part_2_Greatest_Scientist()
        case Part_3_Greatest_Scientist.PageName:
            Part_3_Greatest_Scientist()
        case Part_4_Greatest_Scientist.PageName:
            Part_4_Greatest_Scientist()
            
            
        case Part_1_Let_Me_Help.PageName:
            Part_1_Let_Me_Help()
        case Part_2_Let_Me_Help.PageName:
            Part_2_Let_Me_Help()
        case Part_3_Let_Me_Help.PageName:
            Part_3_Let_Me_Help()
        case Part_4_Let_Me_Help.PageName:
            Part_4_Let_Me_Help()
        case Part_5_Let_Me_Help.PageName:
            Part_5_Let_Me_Help()
            
        case Part_1_Try_Give_Up.PageName:
            Part_1_Try_Give_Up()
            
        case Part_1_Do_Ourselves.PageName:
            Part_1_Do_Ourselves()
        case Part_2_Do_Ourselves.PageName:
            Part_2_Do_Ourselves()
        case Part_3_Do_Ourselves.PageName:
            Part_3_Do_Ourselves()
            
            
        case Part_1_Diplomatic_Immunity.PageName:
            Part_1_Diplomatic_Immunity()
        case Part_2_Diplomatic_Immunity.PageName:
            Part_2_Diplomatic_Immunity()
            
        case Part_1_House.PageName:
            Part_1_House()
        case Part_2_House.PageName:
            Part_2_House()
        case Part_3_House.PageName:
            Part_3_House()
        case Part_4_House.PageName:
            Part_4_House()
            
        case Part_1_They_Are_Vicious.PageName:
            Part_1_They_Are_Vicious()
        case Part_2_They_Are_Vicious.PageName:
            Part_2_They_Are_Vicious()
        case Part_3_They_Are_Vicious.PageName:
            Part_3_They_Are_Vicious()
        case Part_4_They_Are_Vicious.PageName:
            Part_4_They_Are_Vicious()
            
        case Part_1_Feed_Dogs.PageName:
            Part_1_Feed_Dogs()
        case Part_2_Feed_Dogs.PageName:
            Part_2_Feed_Dogs()
            
            
        case Part_1_Stank_Meat.PageName:
            Part_1_Stank_Meat()
        case Part_2_Stank_Meat.PageName:
            Part_2_Stank_Meat()
        case Part_3_Stank_Meat.PageName:
            Part_3_Stank_Meat()
        case Part_4_Stank_Meat.PageName:
            Part_4_Stank_Meat()
            
            
        case Part_1_Just_Desserts.PageName:
            Part_1_Just_Desserts()
        case Part_2_Just_Desserts.PageName:
            Part_2_Just_Desserts()
            
        case Part_1_Council.PageName:
            Part_1_Council()
        case Part_2_Council.PageName:
            Part_2_Council()
        case Part_3_Council.PageName:
            Part_3_Council()
            
        case Part_1_Ask_Chrono.PageName:
            Part_1_Ask_Chrono()
            
        case Part_1_Store_Room.PageName:
            Part_1_Store_Room()
        case Part_2_Store_Room.PageName:
            Part_2_Store_Room()
        case Part_3_Store_Room.PageName:
            Part_3_Store_Room()
        case Part_4_Store_Room.PageName:
            Part_4_Store_Room()
            
        case Part_1_Keep_Thinking.PageName:
            Part_1_Keep_Thinking()
        case Part_2_Keep_Thinking.PageName:
            Part_2_Keep_Thinking()
        case Part_3_Keep_Thinking.PageName:
            Part_3_Keep_Thinking()
            
        case Part_1_Luna_Stays.PageName:
            Part_1_Luna_Stays()
        case Part_2_Luna_Stays.PageName:
            Part_2_Luna_Stays()
            
        case Part_1_Two_Diplomats.PageName:
            Part_1_Two_Diplomats()
        case Part_2_Two_Diplomats.PageName:
            Part_2_Two_Diplomats()
        case Part_3_Two_Diplomats.PageName:
            Part_3_Two_Diplomats()
        case Part_4_Two_Diplomats.PageName:
            Part_4_Two_Diplomats()
            
        case Part_1_Take_Key.PageName:
            Part_1_Take_Key()
            
        case Part_1_Too_Risky.PageName:
            Part_1_Too_Risky()
            
        case Part_1_Peace.PageName:
            Part_1_Peace()
        case Part_2_Peace.PageName:
            Part_2_Peace()
            
        case Part_1_Secret_Weapon.PageName:
            Part_1_Secret_Weapon()
            
        case Part_1_Ice_Ray.PageName:
            Part_1_Ice_Ray()
            
        default:
            fatalError()
        }
    }
}
