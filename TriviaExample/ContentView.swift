//
//  ContentView.swift
//  TriviaExample
//
//  Created by BCCS 2022 on 11/20/24.
//

import SwiftUI

struct ContentView: View {
    
    var questions = [
        [
            "question": "What is 1 + 1?",
            "answers" : [
                1,
                2,
                3,
                4
            ],
            "correctAnswer": 2
        ],
        [
            "question": "What is 2 - 2?",
            "answers" : [
                0,
                2,
                -2,
                4
            ],
            "correctAnswer": 0
        ]
    ]
    
    @State private var questionIndex = 0
    
    var body: some View {
        VStack {
            Text("TRIVIA GAME")
        }
    }
}

#Preview {
    ContentView()
}
