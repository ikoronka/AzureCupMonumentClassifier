//
//  ChatbotQuestionModel.swift
//  
//
//  Created by vojta on 14.05.2021.
//

import Foundation


struct Welcome: Encodable {
    var question: String
    var context: Context
    var qnaID: Int
    let userID: String

    enum CodingKeys: String, CodingKey {
        case question, context
        case qnaID = "qnaId"
        case userID = "userId"
    }
}

// MARK: - Context
struct Context: Encodable {
    var previousQnAID: Int
    var previousUserQuery: String

    enum CodingKeys: String, CodingKey {
        case previousQnAID = "previousQnAId"
        case previousUserQuery
    }
}
