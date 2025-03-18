//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Raul Humberto Juliao Colina on 18/03/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//
import Foundation

struct Question {
    let text: String
    let answers: String
    
    init(q: String, a: String) {
        self.text = q
        self.answers = a
    }
}
