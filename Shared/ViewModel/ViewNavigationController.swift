//
//  ViewNavigationController.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 1/9/22.
//

import SwiftUI

// Whole brains of the operation. The user choice is brought in here to determine where to go next. Check README for more info.
struct ViewNavigationController {
    
    @ViewBuilder  func routeDecision(choice userChoice: String) -> some View {
        
        switch userChoice {
        case "Title View":
            TitleView()
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
        case Part_4_Part_2_See_Whats_In_The_Sky.PageName:
            Part_4_Part_2_See_Whats_In_The_Sky()
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
        case Part_2_Cowboys_Of_Katonia.PageName:
            Part_2_Cowboys_Of_Katonia()
        case Part_3_Cowboys_Of_Katonia.PageName:
            Part_3_Cowboys_Of_Katonia()
        case Part_4_Cowboys_Of_Katonia.PageName:
            Part_4_Cowboys_Of_Katonia()
        case Part_5_Cowboys_Of_Katonia.PageName:
            Part_5_Cowboys_Of_Katonia()
        case Part_1_Make_A_Run_For_It.PageName:
            Part_1_Make_A_Run_For_It()
        case Part_2_Make_A_Run_For_It.PageName:
            Part_2_Make_A_Run_For_It()
        case Part_1_Trust_The_Space_Cowboy.PageName:
            Part_1_Trust_The_Space_Cowboy()
        case Part_2_Trust_The_Space_Cowboy.PageName:
            Part_2_Trust_The_Space_Cowboy()
        case Part_3_Trust_The_Space_Cowboy.PageName:
            Part_3_Trust_The_Space_Cowboy()
        case Part_4_Trust_The_Space_Cowboy.PageName:
            Part_4_Trust_The_Space_Cowboy()
        case Part_4_Trust_The_Space_Cowboy_Part_2.PageName:
            Part_4_Trust_The_Space_Cowboy_Part_2()
        case Part_5_Trust_The_Space_Cowboy.PageName:
            Part_5_Trust_The_Space_Cowboy()
        case Part_1_Who_Trusts_Alien_Cowboys.PageName:
            Part_1_Who_Trusts_Alien_Cowboys()
        case Part_2_Who_Trusts_Alien_Cowboys.PageName:
            Part_2_Who_Trusts_Alien_Cowboys()
        case Part_1_Hapalstance.PageName:
            Part_1_Hapalstance()
        case Part_2_Hapalstance.PageName:
            Part_2_Hapalstance()
        case Part_3_Hapalstance.PageName:
            Part_3_Hapalstance()
        case Part_4_Hapalstance.PageName:
            Part_4_Hapalstance()
        case Part_1_Hapal_Down.PageName:
            Part_1_Hapal_Down()
        case Part_2_Hapal_Down.PageName:
            Part_2_Hapal_Down()
            
        case Part_1_Save_The_Hapal.PageName:
            Part_1_Save_The_Hapal()
        case Part_2_Save_The_Hapal.PageName:
            Part_2_Save_The_Hapal()
        case Part_3_Save_The_Hapal.PageName:
            Part_3_Save_The_Hapal()
        case Part_4_Save_The_Hapal.PageName:
            Part_4_Save_The_Hapal()
        case Part_5_Save_The_Hapal.PageName:
            Part_5_Save_The_Hapal()
        case Part_5_2_Save_The_Hapal.PageName:
            Part_5_2_Save_The_Hapal()
        case Part_6_Save_The_Hapal.PageName:
            Part_6_Save_The_Hapal()
        case Part_1_Landing.PageName:
            Part_1_Landing()
        case Part_2_1_Landing.PageName:
            Part_2_1_Landing()
        case Part_1_1_Landing.PageName:
            Part_1_1_Landing()
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
        case Part_1_2_Diplomatic_Immunity.PageName:
            Part_1_2_Diplomatic_Immunity()
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
        case Part_1_2_Council.PageName:
            Part_1_2_Council()
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
        case Part_1_Part_2_Secret_Weapon.PageName:
            Part_1_Part_2_Secret_Weapon()
            
        case Part_1_Ice_Ray.PageName:
            Part_1_Ice_Ray()
            
        case Part_1_Gravity_Gun.PageName:
            Part_1_Gravity_Gun()
        case Part_2_Gravity_Gun.PageName:
            Part_2_Gravity_Gun()
        case Part_3_Gravity_Gun.PageName:
            Part_3_Gravity_Gun()
        case Part_4_Gravity_Gun.PageName:
            Part_4_Gravity_Gun()
        case Part_5_Gravity_Gun.PageName:
            Part_5_Gravity_Gun()
        case Part_6_Gravity_Gun.PageName:
            Part_6_Gravity_Gun()
        case Part_7_Gravity_Gun.PageName:
            Part_7_Gravity_Gun()
        case Part_8_Gravity_Gun.PageName:
            Part_8_Gravity_Gun()
        case Part_9_Gravity_Gun.PageName:
            Part_9_Gravity_Gun()
            
        case Part_1_Hypersleep.PageName:
            Part_1_Hypersleep()
        case Part_2_Hypersleep.PageName:
            Part_2_Hypersleep()
        case Part_3_Hypersleep.PageName:
            Part_3_Hypersleep()
        case Part_4_Hypersleep.PageName:
            Part_4_Hypersleep()
        case Part_5_Hypersleep.PageName:
            Part_5_Hypersleep()
        case Part_6_Hypersleep.PageName:
            Part_6_Hypersleep()
        case Part_7_Hypersleep.PageName:
            Part_7_Hypersleep()
        case Part_8_Hypersleep.PageName:
            Part_8_Hypersleep()
        case Part_9_Hypersleep.PageName:
            Part_9_Hypersleep()
            
        case Celebrate.PageName:
            Celebrate()
        case Home_Sweet_Home.PageName:
            Home_Sweet_Home()
            
        case Part_1_Boarding_Ticket.PageName:
            Part_1_Boarding_Ticket()
        case Part_2_Boarding_Ticket.PageName:
            Part_2_Boarding_Ticket()
        case Part_3_Boarding_Ticket.PageName:
            Part_3_Boarding_Ticket()
        case Part_4_Boarding_Ticket.PageName:
            Part_4_Boarding_Ticket()
        case Part_5_Boarding_Ticket.PageName:
            Part_5_Boarding_Ticket()
        case Part_6_Boarding_Ticket.PageName:
            Part_6_Boarding_Ticket()
        case Part_7_Boarding_Ticket.PageName:
            Part_7_Boarding_Ticket()
        case Part_8_Boarding_Ticket.PageName:
            Part_8_Boarding_Ticket()
        case Part_9_Boarding_Ticket.PageName:
            Part_9_Boarding_Ticket()
        case Part_10_Boarding_Ticket.PageName:
            Part_10_Boarding_Ticket()
            
        case Part_1_Crash_Wall.PageName:
            Part_1_Crash_Wall()
        case Part_2_Crash_Wall.PageName:
            Part_2_Crash_Wall()
        case Part_3_Crash_Wall.PageName:
            Part_3_Crash_Wall()
            
        case Part_1_Fetch_Key.PageName:
            Part_1_Fetch_Key()
        case Part_2_Fetch_Key.PageName:
            Part_2_Fetch_Key()
        case Part_3_Fetch_Key.PageName:
            Part_3_Fetch_Key()
        case Part_4_Fetch_Key.PageName:
            Part_4_Fetch_Key()
        case Part_5_Fetch_Key.PageName:
            Part_5_Fetch_Key()
            
        case Part_1_Sneak.PageName:
            Part_1_Sneak()
        case Part_1_2_Sneak.PageName:
            Part_1_2_Sneak()
        case Part_2_Sneak.PageName:
            Part_2_Sneak()
        case Part_3_Sneak.PageName:
            Part_3_Sneak()
        case Part_4_Sneak.PageName:
            Part_4_Sneak()
            
        case Part_1_Help_Chrono.PageName:
            Part_1_Help_Chrono()
            
        case Part_1_Clog_Toilet.PageName:
            Part_1_Clog_Toilet()
        case Part_2_Clog_Toilet.PageName:
            Part_2_Clog_Toilet()
        case Part_3_Clog_Toilet.PageName:
            Part_3_Clog_Toilet()
        case Part_4_Clog_Toilet.PageName:
            Part_4_Clog_Toilet()
        case Part_5_Clog_Toilet.PageName:
            Part_5_Clog_Toilet()
            
        case Part_1_Not_Important.PageName:
            Part_1_Not_Important()
            
        case Part_1_Murkblur.PageName:
            Part_1_Murkblur()
            
        case Part_1_Giant_Luna.PageName:
            Part_1_Giant_Luna()
        case Part_2_Giant_Luna.PageName:
            Part_2_Giant_Luna()
        case Part_3_Giant_Luna.PageName:
            Part_3_Giant_Luna()
        case Part_4_Giant_Luna.PageName:
            Part_4_Giant_Luna()
            
        case Part_1_Tell.PageName:
            Part_1_Tell()
        case Part_2_Tell.PageName:
            Part_2_Tell()
            
        case Part_1_Dont_Tell.PageName:
            Part_1_Dont_Tell()
            
        case Part_1_Toilet_To_Hyper_Sleep.PageName:
            Part_1_Toilet_To_Hyper_Sleep()
        case Part_2_Toilet_To_Hyper_Sleep.PageName:
            Part_2_Toilet_To_Hyper_Sleep()
        case Part_3_Toilet_To_Hyper_Sleep.PageName:
            Part_3_Toilet_To_Hyper_Sleep()
        case Part_4_Toilet_To_Hyper_Sleep.PageName:
            Part_4_Toilet_To_Hyper_Sleep()
            
        default:
            fatalError()
        }
    }
}
