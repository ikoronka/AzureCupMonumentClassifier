//
//  Pamatkovac_verze_3App.swift
//  Pamatkovac verze 3
//
//  Created by vojta on 07.05.2021.
//

import SwiftUI

@main
struct Pamatkovac_verze_3App: App {
    @StateObject var model = ChatBotModel()
    @StateObject var am = MicrophoneMonitor(numberOfSamples: numberOfSamples)
    
    var body: some Scene {
        WindowGroup {
            Chatbot(am: am)
                .environmentObject(model)
                
            
        }
    }
}
