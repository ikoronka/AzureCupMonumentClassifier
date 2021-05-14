//
//  NetworkingData.swift
//  Pamatkovac verze 3
//
//  Created by vojta on 13.05.2021.
//

import Foundation



struct NetworkingData {
    
    static let urlCV: URL =  URL(string: "https://monumentclassifiertrain.cognitiveservices.azure.com/customvision/v3.0/Prediction/4e3e5ac4-18ad-409c-a370-ae274cdd615a/classify/iterations/pre-release/image")!
    static let predictionKeyCV: String = "ab54d83d41414c48a8ecaefd6a8a1245"
    
    static let subSpeechToText = "3e592cabca284a3cbd03a446f68a1e1b"
    static let regionSpeechToText = "eastus"
    
    
    enum Method: String {
        case POST
        case GET
    }
}


