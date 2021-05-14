//
//  SpeechToTextViewModel.swift
//  Pamatkovac verze 3
//
//  Created by vojta on 14.05.2021.
//

import Combine
import SwiftUI


extension ChatBotModel {
//MARK: - COMUNICATIONS CHATBOT
    
    func sendMessageToChatbot() {
        
        let input = "More information about **The Church of Our Lady before Týn** [here!](https://en.wikipedia.org/wiki/Church_of_Our_Lady_before_T%C3%BDn)\n\n![Týn image](https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Stadhuis_van_Praag%2C_Praag%2C_Tsjechi%C3%AB_Aug_17%2C_2019_04-21-56_PM.jpeg/440px-Stadhuis_van_Praag%2C_Praag%2C_Tsjechi%C3%AB_Aug_17%2C_2019_04-21-56_PM.jpeg)"
        let detector = try! NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
        let matches = detector.matches(in: input, options: [], range: NSRange(location: 0, length: input.utf16.count))

        for match in matches {
            guard let range = Range(match.range, in: input) else { continue }
            let url = input[range]
            print(url)
        }

        let arr = input.components(separatedBy: "[")
        print(arr)

        let str = arr[0]
        var finalStr = ""
        
        for i in str {
            if i != "*"{
                finalStr += "\(i)"
            }
        }
        print(finalStr)
        
        
        
    }
}
